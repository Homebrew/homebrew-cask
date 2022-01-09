cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.0.0"

  if Hardware::CPU.intel?
    sha256 "24e0cb9ad2eae76277e0908746ddae87633d0ea0aaa56ea426e55a257f1bc6a4"
  else
    sha256 "b55ee1fa80ff97e3ccc98b3cabf7736f1fe9754bdbf6d3f531bf4d2e54d6da37"
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
