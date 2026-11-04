cask "robodust" do
  version "0.7"
  sha256 "e2de4313dfc6ad940454e559d85cf6aa91de47b2039b819a51dddbb8c29aefc5"

  url "https://robodust.muhraufan.com/releases/RoboDust-#{version}.dmg"
  name "RoboDust"
  desc "Robot vacuum that cleans files off the desktop"
  homepage "https://robodust.muhraufan.com/"

  livecheck do
    url "https://robodust.muhraufan.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RoboDust.app"

  zap trash: [
    "~/Library/Application Support/RoboDust",
    "~/Library/Caches/com.muhraufan.robodust",
    "~/Library/HTTPStorages/com.muhraufan.robodust",
    "~/Library/Preferences/com.muhraufan.robodust.plist",
  ]
end
