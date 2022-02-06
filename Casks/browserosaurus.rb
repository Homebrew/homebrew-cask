cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.2.0"

  if Hardware::CPU.intel?
    sha256 "4933cb7262f69f2c6d3847b4d2df5fbf6307d60f45a1ae72e853415ae39a0e6a"
  else
    sha256 "c45b1205fa7cecb83691c02f868dce779721e77aa056af07c0d02cc0970928a6"
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
