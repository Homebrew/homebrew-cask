cask "clion" do
  arch arm: "-aarch64"

  version "2024.3.3,243.24978.55"
  sha256 arm:   "6784b68f9c827a5cacd9247376b17229a8ce6514a6142caa96ceb9df2f47fd0d",
         intel: "a5c50b3d615e93ee3461a420bb151b1af31a1f21356333522f4211f7c34bdc3e"

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
  depends_on macos: ">= :catalina"

  app "CLion.app"
  binary "#{appdir}/CLion.app/Contents/MacOS/clion"

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
