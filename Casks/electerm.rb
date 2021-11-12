cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.17.15"

  if Hardware::CPU.intel?
    sha256 "56244952a86554096495c9105b7ed9e19523526ae66f03670a019e17a1b88087"
  else
    sha256 "fae3ac9cb70dc89c4caae525d77f3736ba3c4118d2f7be769db4bddb8390688a"
  end

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
