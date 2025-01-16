cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.60.16"
  sha256 arm:   "e5a967797f9328a96ce36a84957eec36d9aa71dca086b02231bc0477b65abbba",
         intel: "0e149b6c2bac39540e8835ca161a22e506d55fce6fb3b5a38994f898105bd77f"

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
