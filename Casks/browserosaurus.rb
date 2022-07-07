cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.4.2"

  if Hardware::CPU.intel?
    sha256 "1942ce8bff7315de9ec24a8df0461641a2209139a46f93897e4759d0bb6e8708"
  else
    sha256 "544ff0fd1886f8474449f96a51bb26e8b303e7d1a16ad8f80e38b645af22b384"
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
