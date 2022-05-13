cask "decrediton" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "1.7.2"

  if Hardware::CPU.intel?
    sha256 "2cff49751267a1a284df4fc73295e6a729f0f2a1858187772c0ae61981e6a5bd"
  else
    sha256 "7a68aaa273564e8d7b96af4624c0c476415f6977ab446288127010cf340f2a38"
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
