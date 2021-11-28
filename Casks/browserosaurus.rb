cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.6"

  if Hardware::CPU.intel?
    sha256 "ebd249e841a143cf8856c2da9d1d8e2f909d4270f316e23c4db1bfc300e86729"
  else
    sha256 "69407bbc18e39a4e387d346b96b8a61a9f1846de43f104f3fd227513e26d39dc"
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
