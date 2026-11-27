cask "shellrs" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.20"
  sha256 arm:   "ce8eea1da39558f8750bf68c1167bfe7527fc0963e333657f41d8abf90adf972",
         intel: "d6c33b296f4bb10f86a3378e9b580268afdae9ea1ce7e1c2852ceb464b352507"

  url "https://github.com/since2006/shell-rs/releases/download/v#{version}/ShellRS-#{version}-macos-#{arch}.dmg"
  name "ShellRS"
  desc "SSH and SFTP client"
  homepage "https://shellrs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "ShellRS.app"
  binary "#{appdir}/ShellRS.app/Contents/MacOS/shellrs"

  uninstall quit: "com.shellrs.ShellRS"

  zap trash: [
    "~/Library/Application Support/shellrs",
    "~/Library/Caches/shellrs",
    "~/Library/Preferences/com.shellrs.ShellRS.plist",
  ]
end
