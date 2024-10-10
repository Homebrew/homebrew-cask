cask "clion@eap" do
  arch arm: "-aarch64"

  version "2024.3,243.19420.28"
  sha256 arm:   "f66d7ae98b98fcc26e69d41725796a5ea74eab14737b8dc5cda45d6b0219e3ae",
         intel: "ab3d373088f48ddce5d25b920b1e0fccdbb6468e2431c5a3f865fb00ffff3034"

  url "https://download.jetbrains.com/cpp/CLion-#{version.csv.second}#{arch}.dmg"
  name "CLion EAP"
  desc "CLion Early Access Program"
  homepage "https://www.jetbrains.com/clion/nextversion"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&release.type=eap"
    strategy :json do |json|
      json["CL"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CLion #{version.csv.first} EAP.app"
  binary "#{appdir}/CLion #{version.csv.first} EAP.app/Contents/MacOS/clion", target: "clion-eap"

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Preferences/jetbrains.clion.*.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
