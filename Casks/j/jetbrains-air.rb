cask "jetbrains-air" do
  arch arm: "-aarch64"
  folder = on_arch_conditional arm: "aarch64", intel: "x64"

  version "261.474.25"
  sha256 arm:   "4c273bf7ab831c53561370a3994a30a555668511b21a51f1ef40d7c4f52b93ef",
         intel: "b17123c5696a9ab23cc2d5980da5d092ba8ee98fa8c771c542a7532eef9c738e"

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
