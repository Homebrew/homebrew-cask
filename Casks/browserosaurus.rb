cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.3.0"

  if Hardware::CPU.intel?
    sha256 "23e51064c8a0eb6745932f14f4c2ab81e8241771e9f80fd8f11bbeb863276907"
  else
    sha256 "db04b58ea91abff53bec0a266af39486ebb7483f3740572b55b4515a85d8fc90"
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
