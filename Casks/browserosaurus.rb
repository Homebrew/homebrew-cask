cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.1.0"

  if Hardware::CPU.intel?
    sha256 "10fa245a3c77a7736ca02be6f82e29cfa7a5af4e22803858e15ed4ae08eaa6fb"
  else
    sha256 "34fb8ad46ca71e66a3afa5e70730ebe6f2a8d0b15d3b4c3e5d8fef420b3b7b66"
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
