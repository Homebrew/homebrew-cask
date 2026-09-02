cask "clion" do
  arch arm: "-aarch64"

  version "2026.2.2,262.10315.131"
  sha256 arm:   "514fd03e52d3f101fc798f87f08deec216beac864b6a78b04f9095e15d5ae898",
         intel: "506dc6afd987dbeefe5616c965665fc2f78a134432f19d32dd8b0b25278380f7"

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

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
