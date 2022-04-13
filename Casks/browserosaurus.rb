cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.5.0"

  if Hardware::CPU.intel?
    sha256 "50e4278f8b844a8a2be25ec4662529e70bfec1c8ac2b2adc41dc0fa539e07fa9"
  else
    sha256 "48977c979d784e0c913c69ac0cb65081447db1dfae693b2ebf050167fe4eeefc"
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
