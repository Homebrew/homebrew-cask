cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256  arm:   "f5e0855d4cdfda1419d1f27e31ad21b8fbfd3e3aff75f17de29b77b66fbfaabc",
          intel: "5e6100ae3174a2030d358dd00bb69cd87c70ad2036e12f033cf4871cbf53b07c"

  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}-#{arch}.dmg",
      verified: "invokerdev.fra1.digitaloceanspaces.com/invoker/"
  name "Invoker"
  desc "Utility for managing Laravel applications"
  homepage "https://invoker.dev/"

  livecheck do
    url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Invoker.app"

  zap trash: [
    "~/Library/Application Support/Invoker",
    "~/Library/Logs/Invoker",
    "~/Library/Preferences/de.beyondco.invoker.plist",
    "~/Library/Saved Application State/de.beyondco.invoker.savedState",
  ]
end
