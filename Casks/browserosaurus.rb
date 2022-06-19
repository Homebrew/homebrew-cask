cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.4.1"

  if Hardware::CPU.intel?
    sha256 "24ef3a7a59a90570e675a60b357f4c3587c30cff0c84848b35fc8d73a0a81b47"
  else
    sha256 "7ff1828d212516155c47a9e72cb0d038f5ff261c4da77f88ae4af947178f9b50"
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
