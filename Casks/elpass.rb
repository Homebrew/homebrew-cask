cask "elpass" do
  version "1.4.1,400"
  sha256 "ba62571f86d1d3b94bbf7f54b5cafecdbfca4f7c10995ce71b50cd2872faf628"

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
