cask "clion@eap" do
  arch arm: "-aarch64"

  version "2025.2,252.13776.55"
  sha256 arm:   "acb021c04457c5ceebe6502d16158a316b59fdc374d3e595886f66509c9ed034",
         intel: "96f2296632fc66913fd67b5e30fe09b0217f95d7ca93b286245eb809cceb27eb"

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
