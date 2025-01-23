cask "intellij-idea-ce" do
  arch arm: "-aarch64"

  version "2024.3.2.1,243.23654.153"
  sha256 arm:   "768594aa64c46015f3c6650fd7d6a36bd4fa191513701ef8818cdf70e67a1f4d",
         intel: "dd78f20ad2f79e6be7d76e2f171e93e0e3ef5a985476f8391c2b1bc1bd3aca9c"

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
