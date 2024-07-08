cask "clion@eap" do
  arch arm: "-aarch64"

  version "2024.2,242.19890.26"
  sha256 arm:   "2cfa4ff7a0a16619a9267e79d77a2f35f5e2ec3e2f6923c584d544ec61c6cf83",
         intel: "073339c534db8a0378af3608e6be904a8720e9b299a0270f8f275bed611bddad"

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
