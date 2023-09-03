cask "lectrote" do
  version "1.4.4"
  sha256 "e26021a39463dd7d06b94f3c97eb8b97e1a9ab79aeb4edfef39857ff073dd668"

  url "https://github.com/erkyrath/lectrote/releases/download/lectrote-#{version}/Lectrote-#{version}-macos-universal.dmg"
  name "lectrote"
  desc "Interactive Fiction interpreter in an Electron shell"
  homepage "https://github.com/erkyrath/lectrote"

  app "Lectrote.app"

  zap trash: [
    "~/Library/Application Support/Lectrote",
    "~/Library/Preferences/com.eblong.lectrote.plist",
  ]
end
