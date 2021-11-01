cask "elpass" do
  version "1.4.2,412"
  sha256 "da78de7639ea804d24764c22a34e8511f9863056d2e5923931c3c520363ff8de"

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
