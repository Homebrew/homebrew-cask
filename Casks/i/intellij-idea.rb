cask "intellij-idea" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.63"
  sha256 arm:   "aac3cdc6d8441b94052473fee37a9679242a36f49f60fdce6cceaa3e7ad46e33",
         intel: "a0ddaf2eb6b6d1c3a7da922b4d604d5d7e21231fcdbf44aed28feec5199be53f"

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
  depends_on :macos

  app "IntelliJ IDEA.app"
  command_wrapper "idea",
                  executable: "#{appdir}/IntelliJ IDEA.app/Contents/MacOS/idea"

  uninstall quit: "com.jetbrains.intellij"

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
