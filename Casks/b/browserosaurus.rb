cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.6.0"
  sha256 arm:   "5ed39155ec662a3c0bc235cc140cee3bc3735ba4c901a63c98423df69918f7e9",
         intel: "a6a1d59010f79587902f1b9316cfd6c977da6ec9c2814be1c32861f0b342a987"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
