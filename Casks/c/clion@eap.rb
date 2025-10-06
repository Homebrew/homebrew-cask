cask "clion@eap" do
  arch arm: "-aarch64"

  version "2025.3,253.24325.50"
  sha256 arm:   "72fc307d24e69de72760f8634658553c56ee8346c20f6808772ec05f36d72428",
         intel: "be4844361e3c3e1eb3fac1db76517e36d9d50ecc0847e5807e9e6f8ff4f0b010"

  url "https://download.jetbrains.com/cpp/CLion-#{version.csv.second}#{arch}.dmg"
  name "CLion EAP"
  desc "CLion Early Access Program"
  homepage "https://www.jetbrains.com/clion/nextversion"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&release.type=eap"
    strategy :json do |json|
      json["CL"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
