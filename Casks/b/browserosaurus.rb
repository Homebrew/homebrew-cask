cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.12.0"
  sha256 arm:   "f90072dd87c8f8966d5c038a1f4c6a9f1c3d61fe088e8ac6499b7e400e994566",
         intel: "2694fa08a218c93569005db4098d3f1e3862abbcd0e1dae85f4a370922268506"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  deprecate! date: "2025-08-30", because: :discontinued

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
