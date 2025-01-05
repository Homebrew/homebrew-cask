cask "lectrote" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"
  sha256 arm:   "b727d4bc64d503eea6f2378782df786100851309bb970c7cc2ff475f5d2f70fb",
         intel: "19351bb7f76a0a6b348e85b182cbcf6acbf3aadb903cb65e43cf4dd49cccb996"

  url "https://github.com/erkyrath/lectrote/releases/download/lectrote-#{version}/Lectrote-#{version}-macos-#{arch}.dmg"
  name "lectrote"
  desc "Interactive Fiction interpreter in an Electron shell"
  homepage "https://github.com/erkyrath/lectrote"

  depends_on macos: ">= :catalina"

  app "Lectrote.app"

  zap trash: [
    "~/Library/Application Support/Lectrote",
    "~/Library/Preferences/com.eblong.lectrote.plist",
  ]
end
