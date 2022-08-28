cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "19.1.0"
  sha256 arm:   "e092c1a709d717cb7e393cc0575e2de624dc8e51624e68f16975ba74f0796623",
         intel: "35ffc0bdf0767f6dd55ae541796c87e0bbce4513554b4bf128abb7664b9096d0"

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
