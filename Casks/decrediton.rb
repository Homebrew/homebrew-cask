cask "decrediton" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "09da70f24412d48339ad97fedf394c1758eb2af97f7e83c5d4f4a27fc198f5b9"
  else
    sha256 "729a515318ad1866a0c08a0d885e66afa144c88f8a0f761ba22174234d3c6308"
  end

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "Wallet GUI for decred autonomous digital currency"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
