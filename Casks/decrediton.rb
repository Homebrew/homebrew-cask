cask "decrediton" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "1.7.0"

  if Hardware::CPU.intel?
    sha256 "71600c35e284ae0c85b3b18de74977fbb241bb8c99346cd32987f167502d9037"
  else
    sha256 "28d2aedd3afe4781264acad2983ad12647b88d358d2238cc2ea2975c293397ce"
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
