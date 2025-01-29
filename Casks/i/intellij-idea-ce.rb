cask "intellij-idea-ce" do
  arch arm: "-aarch64"

  version "2024.3.2.2,243.23654.189"
  sha256 arm:   "8a0435dabe4ff169430b46d119afcaa053b8d7d8d5d6a666e56292f6d470a2c7",
         intel: "7a537dc57f88657bda1efc1d9c0ad86b3defa2c232b0cf678779ac6fcf90efa7"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
    strategy :json do |json|
      json["IIC"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "IntelliJ IDEA CE.app"
  binary "#{appdir}/IntelliJ IDEA CE.app/Contents/MacOS/idea", target: "idea-ce"

  zap trash: [
    "~/Library/Application Support/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Caches/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Logs/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
