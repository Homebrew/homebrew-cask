cask "clion" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.117"
  sha256 arm:   "94e31328a37d0e26fc684adc870db2ff1066113c018129c9a3118ddf2afddfd7",
         intel: "c4bf76900fee302ad34154870d26381eb329b7a57fbded01c778c0aa822785fb"

  url "https://download.jetbrains.com/cpp/CLion-#{version.csv.first}#{arch}.dmg"
  name "CLion"
  desc "C and C++ IDE"
  homepage "https://www.jetbrains.com/clion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
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
  depends_on macos: :monterey

  app "CLion.app"
  command_wrapper "clion",
                  executable: "#{appdir}/CLion.app/Contents/MacOS/clion"

  uninstall quit: "com.jetbrains.CLion"

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
