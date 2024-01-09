cask "aqua" do
  arch arm: "-aarch64"

  version "2023.3,233.13135.75"
  sha256 arm:   "6d793053d716116f0b6f68012d74a79a0d81ef7f621cc284642fb8f0db8b44a8",
         intel: "d4e572a5d4d98eb3e03f637b3a48f9a125077d79e21b471cb0669701bec2056c"

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
