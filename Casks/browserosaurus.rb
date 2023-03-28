cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.2.0"
  sha256 arm:   "089ea0643c5bef129b5f5e2aaffa3fb1b4a8fa72cdeb15dbfef286664ba86f61",
         intel: "bfe7e10accbc1872b6144ff44094dd646c590a2d9eff6d5de137a03c12f54fc5"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
