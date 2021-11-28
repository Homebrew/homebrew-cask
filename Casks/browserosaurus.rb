cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.7"

  if Hardware::CPU.intel?
    sha256 "ecc3037716b745b48d1b4eea59b1ffb49648e28c6ff1a5316ac1cfb74df86c35"
  else
    sha256 "e61cbc2110b1c705fe487c51094d9e585728fe35df2fd46c334d893516c0c69e"
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
