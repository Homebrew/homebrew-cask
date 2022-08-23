cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "19.0.1"
  sha256 arm:   "f65f11f9f91e01aabc4f1dc90b1a7221bd537bb1d7a7c74bd27f0a11cfd9b282",
         intel: "1d940ebd00e52e21435fcbe3b03829d21674bb9d956e6dc9e93f7a9be799f54f"

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
