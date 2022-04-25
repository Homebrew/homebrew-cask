cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.0"

  if Hardware::CPU.intel?
    sha256 "aed67a417be836b5851295f8bf4ceba599639d9db54627db497acf05d11c2b31"
  else
    sha256 "67ac434995b075b68fa4014648cb5788d92a97ef2f78aba42ec88720ca01fbc0"
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
