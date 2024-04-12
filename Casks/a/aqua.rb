cask "aqua" do
  arch arm: "-aarch64"

  version "2024.1,241.15989.28"
  sha256 arm:   "29b975e6845b62ed466d26920fec4c9e5e74588b5ff5cf384d672b98bb602549",
         intel: "e90b3cc44efcabd3f31025bae506ec87da138f0a06f5cd4eaf7f96bb57db123a"

  url "https://download.jetbrains.com/aqua/aqua-#{version.csv.second}#{arch}.dmg"
  name "Aqua"
  desc "Tests writing environment"
  homepage "https://www.jetbrains.com/aqua/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=QA&latest=true&type=preview"
    strategy :json do |json|
      json["QA"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Aqua #{version.before_comma} EAP.app", target: "Aqua.app"
  binary "#{appdir}/Aqua.app/Contents/MacOS/aqua"

  zap trash: [
    "~/Library/Application Support/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Caches/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Logs/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.aqua-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.aqua-EAP.SavedState",
  ]
end
