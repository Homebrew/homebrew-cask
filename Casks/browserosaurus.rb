cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.4.0"

  if Hardware::CPU.intel?
    sha256 "53bbc681ca9ed398a33eeb5f9704f137b064d4e102ceb41b84d9b23859275538"
  else
    sha256 "cfb59ee3d463fb270d4903ac705022514603ba0e6ab0f3ffe1fa764f79f1aa06"
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
