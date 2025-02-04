cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.60.32"
  sha256 arm:   "6b702688a22b06e0eacaf1ab577279482fe51af9229f730e9768c1cc8a4f27dc",
         intel: "f965c02ad6944f8322c33542ca8fbc73a28705c8c5349012942ef4ae3f29886c"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
