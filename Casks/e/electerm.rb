cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.70.0"
  sha256 arm:   "629b9714312db9a12b877472594b0aa74ae1b971e82f9cfceb654c27019b3e11",
         intel: "d9388b0d759a181c8edfebde84af8b60ead865119a79500dfa44d6ce2a105f0a"

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
