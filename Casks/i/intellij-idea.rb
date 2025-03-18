cask "intellij-idea" do
  arch arm: "-aarch64"

  version "2024.3.5,243.26053.27"
  sha256 arm:   "8cf632fbb89e6dfbd2a536643450e6ae6671001348461260fe0132ed14ef3d0c",
         intel: "8b50dd9783c6f8dde229606a4e2d1d0e4ce95f0db33502053ed957fd532bcc35"

  url "https://download.jetbrains.com/idea/ideaIU-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Ultimate"
  desc "Java IDE by JetBrains"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release"
    strategy :json do |json|
      json["IIU"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "intellij-idea@eap"
  depends_on macos: ">= :high_sierra"

  app "IntelliJ IDEA.app"
  binary "#{appdir}/IntelliJ IDEA.app/Contents/MacOS/idea"

  zap trash: [
    "~/Library/Application Support/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Caches/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Logs/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.plist",
    "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/jetbrains.idea.*.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
