cask "clion@eap" do
  arch arm: "-aarch64"

  version "2025.1,251.20015.45"
  sha256 arm:   "20155c2122ec43b033b072ddc19dfa1ad8085f19ddec73393951f0ee44a35793",
         intel: "add4d50ec95f2890bc3add399eb087ec2bf9c8fb0364d4cc898e5ee2d4d93139"

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
