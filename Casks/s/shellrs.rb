cask "shellrs" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.21"
  sha256 arm:   "6cce31380df1be8d16cedc18f0309ff06c20fc46f940341a8d11588b6df6319c",
         intel: "510f7e50c6de8ff8d5342a03b91b48aad4efbf44eb69434801153fdbc05e3a7e"

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
