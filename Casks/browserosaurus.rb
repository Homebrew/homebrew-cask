cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.2.0"

  if Hardware::CPU.intel?
    sha256 "e51fb5c8d7bc6f155b58697091187478b6a8ecce47a118a0e2190b34dd9307e8"
  else
    sha256 "274ee4ed373acc7dd450b230ae888c27ec40cd9a5494e126711daa3f3b0aa349"
  end

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
