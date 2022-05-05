cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.1.0"

  if Hardware::CPU.intel?
    sha256 "6a8bdd83e52afdee6e16fc98a9657ce322d454f0bd1d251368f121084c0a8322"
  else
    sha256 "efa400ebdf9cbaa5d4e544456ab93b1e29ac2fa49972089bdbe956551b188423"
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
