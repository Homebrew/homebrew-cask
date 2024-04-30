cask "aqua" do
  arch arm: "-aarch64"

  version "2024.1,241.15989.156"
  sha256 arm:   "3a9e7421eb1953dba1963422e18b54cb74b5ba7b6b8ad51f7ce3825d8a8b9d65",
         intel: "af0e91a48f63604443ad6d47220c0e705cbddae91a7b5c2bf563db774b2b5a2d"

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
