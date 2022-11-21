cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "19.3.2"
  sha256 arm:   "0f151452239b34e8c7613579640ed7e2f87e9c47f41eaee464eb2d3dfdcbb576",
         intel: "87746f39ac5501ab62a2b989398d492e788be6c72894bb1c012f54a0a05a85ab"

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
