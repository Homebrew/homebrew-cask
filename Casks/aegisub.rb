cask "aegisub" do
  version "3.2.2"
  sha256 "d71fa46f074a2d5a252f30779e0b8d913d5157258f5d9fc333411f8c9493f42b"

  url "http://ftp.aegisub.org/pub/releases/Aegisub-#{version}.dmg"
  appcast "http://www.aegisub.org/downloads/#current"
  name "Aegisub"
  desc "Cross-platform, open-source tool for creating and modifying subtitles"
  homepage "http://www.aegisub.org/"

  app "Aegisub.app"

  uninstall quit: "com.aegisub.aegisub"

  zap trash: [
    "~/Library/Application Support/Aegisub",
    "~/Library/Preferences/com.aegisub.aegisub.plist",
    "~/Library/Saved Application State/com.aegisub.aegisub.savedState",
  ]
end
