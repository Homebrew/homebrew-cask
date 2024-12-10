cask "clion" do
  arch arm: "-aarch64"

  version "2024.3.1,243.22562.155"
  sha256 arm:   "a10b9ab9bcffb691d0a3f91c4ffd008ccbda7b628abbdff50f43136cb0689fd5",
         intel: "dedf67707acb6183aadf9607d16f926f3233616ca610f85a294405536c2f2eee"

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
