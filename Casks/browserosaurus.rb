cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.1.1"

  if Hardware::CPU.intel?
    sha256 "a89345832b94774a4b174bf7a3f216e3cf66f014400f38644cbf7764cc6ceded"
  else
    sha256 "3f9cbd12ab67687e13ff8e614c7c9cd527851e65f338e5f82e17ae05a9a476ff"
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
