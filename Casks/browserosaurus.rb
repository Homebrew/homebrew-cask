cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.5.0"

  if Hardware::CPU.intel?
    sha256 "9c5681976175a8c350254c2f0e787c0073b6059539b9c0e5656052808e04693c"
  else
    sha256 "769291187b35c0702e27f3204aaebf78e70c3f26d539e36fc570f24d4997c564"
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
