cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.72.48"
  sha256 arm:   "567df8aac2813be9a47f8d0eb3b26ca9076c9ffe3d75ac0bcc666e4e0ad93896",
         intel: "dfd22996aeb6dca13076d3ebe72be292736c6317bfd12a64c7edbf4cf969d09a"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
