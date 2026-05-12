cask "jetbrains-air" do
  arch arm: "-aarch64"
  folder = on_arch_conditional arm: "aarch64", intel: "x64"

  version "261.584.13"
  sha256 arm:   "b0eff66d6950173fd3b464ada91f9cc9d6f82740c69ca0fcbb4fe501033faba7",
         intel: "2ba29bd28d5054b4d192b608ab89bf6071c4caea627064bbc58fc8e288fc316f"

  url "https://download.jetbrains.com/air/installers/macos_#{folder}/Air-#{version}#{arch}.dmg",
      verified: "download.jetbrains.com/air/installers/"
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
