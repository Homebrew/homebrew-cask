cask "shellrs" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.19"
  sha256 arm:   "8c9705594c81a54589cb23b9c617013d99589fc9aee82310f28950b2f5d7ec69",
         intel: "04cad5569f46d1f6c026b87020f940a65409d3375d7c72af4126e6c2168615a6"

  url "https://github.com/since2006/shell-rs/releases/download/v#{version}/ShellRS-#{version}-macos-#{arch}.dmg"
  name "ShellRS"
  desc "Native GPU-rendered SSH client with SFTP and port forwarding"
  homepage "https://shellrs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "ShellRS.app"
  binary "#{appdir}/ShellRS.app/Contents/MacOS/shellrs", target: "shellrs"

  uninstall quit: "com.shellrs.ShellRS"

  zap trash: [
    "~/Library/Application Support/shellrs",
    "~/Library/Caches/shellrs",
    "~/Library/Preferences/com.shellrs.ShellRS.plist",
  ]
end
