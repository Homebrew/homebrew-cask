cask "lectrote" do
  version "1.4.3"
  sha256 "a69423ff98cb1a29ed584ced61d283b4d39058d9fdc21baa4e3748bf76aec23e"

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
