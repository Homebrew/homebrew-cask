cask "elpass" do
  version "1.3.5,363"
  sha256 "326ca7831ca16e6469be4bc8843d8338804e86d0d6cf15dd3fd25aff5347f842"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Elpass.app"
end
