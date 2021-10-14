cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.2.1"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  if Hardware::CPU.intel?
    sha256 "ec3d3c5f274091e2979c8681aeaf78df97f5795963b5f9366a6f32b57b740156"
  else
    sha256 "dd2ce85d95a68743a9783e0237c9a7fd64f456bb623733926f0b1595f58198d3"
  end

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
