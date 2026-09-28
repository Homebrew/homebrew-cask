cask "jetbrains-air" do
  arch arm: "-aarch64"
  folder = on_arch_conditional arm: "aarch64", intel: "x64"

  version "262.834.57"
  sha256 arm:   "4f618951d51e56fa70028977ff46065d303a1b11897c2a1c82e0ef0029f38327",
         intel: "3c6f0fd17f1a04f3c51df4e04f257e45b307f76ad5a171684f2620db8440bf2a"

  url "https://download.jetbrains.com/air/installers/macos_#{folder}/Air-#{version}#{arch}.dmg"
  name "JetBrains Air"
  desc "Agentic development environment"
  homepage "https://air.dev/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AIR&latest=true&type=preview"
    strategy :json do |json|
      json["AIR"]&.map { |release| release["build"] }
    end
  end

  auto_updates true
  depends_on :macos

  app "Air.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/Air",
    "~/Library/Caches/JetBrains/Air",
    "~/Library/Logs/JetBrains/Air",
    "~/Library/Preferences/com.jetbrains.air.plist",
  ]
end
