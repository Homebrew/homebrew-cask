cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.3.0"

  if Hardware::CPU.intel?
    sha256 "73d423bf05a5c04eac268dfdbc6c084430af4aea0c6ae0d4bb314df462bc6b2f"
  else
    sha256 "b7d0f0ccdf13b96accce502cf5e0039cfd0270dd5721b58c9f7625ad63999664"
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
