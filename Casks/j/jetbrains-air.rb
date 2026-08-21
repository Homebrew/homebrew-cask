cask "jetbrains-air" do
  arch arm: "-aarch64"
  folder = on_arch_conditional arm: "aarch64", intel: "x64"

  version "262.579.44"
  sha256 arm:   "75b61f28a619e1abbb9a55ecf250664a9c670f325f4bb2a212dbdb6da9c6e1f9",
         intel: "77cbac42b1cdf9685ce5fd3d68ffb4c24ba9994a03f6585e837f77f811f40ee0"

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
