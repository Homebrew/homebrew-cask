cask "jetbrains-air" do
  arch arm: "-aarch64"
  folder = on_arch_conditional arm: "aarch64", intel: "x64"

  version "262.834.50"
  sha256 arm:   "4bff72baae05b6001e5821920c71a6e61d53e7aeb6dd6f4b44b0552380c00676",
         intel: "8d8c20d67c30077592f1842b87d095950cc7f604127bf354f5e13e307aa37dea"

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
