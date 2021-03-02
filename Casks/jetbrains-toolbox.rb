cask "jetbrains-toolbox" do
  version "1.20.7940"

  if Hardware::CPU.intel?
    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
    sha256 "9d8b0644b182cf5266836eb0506ac7b03199dc1f45eaf5e0d4c0d48d891ea79e"
  else
    url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}-arm64.dmg"
    sha256 "550cc384e497cc3fc54c3e8864c81726696577a8c5c5aef263f9cdb66ebde15a"
  end
  appcast "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox/app/"

  auto_updates true

  app "JetBrains Toolbox.app"

  zap trash: [
    "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
    "~/Library/Logs/JetBrains/Toolbox",
    "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
    "~/Library/Application Support/JetBrains/Toolbox",
  ]
end
