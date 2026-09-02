cask "intellij-idea@eap" do
  arch arm: "-aarch64"

  version "2026.3,263.3889.65"
  sha256 arm:   "4bd04fd1a156ec18ceaad15d7d385f40568e356af64b00affa27677d4bb08e5e",
         intel: "f9c6a41a46151b5d54b48e8605b208e4ee9b50ce8b2cb4bcb788c08c7231ba1c"

  url "https://download.jetbrains.com/idea/ideaIU-#{version.csv.second}#{arch}.dmg"
  name "IntelliJ IDEA EAP"
  desc "IntelliJ IDEA Early Access Program"
  homepage "https://www.jetbrains.com/idea/nextversion"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=eap"
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
  conflicts_with cask: "intellij-idea"
  depends_on :macos

  # The application path is often inconsistent between version
  rename "IntelliJ IDEA*.app", "IntelliJ IDEA.app"

  app "IntelliJ IDEA.app"
  binary "#{appdir}/IntelliJ IDEA.app/Contents/MacOS/idea"

  uninstall quit: ["com.jetbrains.intellij-EAP", "com.jetbrains.intellij"]

  zap trash: [
    "~/Library/Application Support/JetBrains/IntelliJIdea#{version.csv.first}",
    "~/Library/Caches/JetBrains/IntelliJIdea#{version.csv.first}",
    "~/Library/Logs/JetBrains/IntelliJIdea#{version.csv.first}",
    "~/Library/Preferences/com.jetbrains.intellij-EAP.plist",
    "~/Library/Preferences/com.jetbrains.intellij.plist",
    "~/Library/Preferences/IntelliJIdea#{version.csv.first}",
    "~/Library/Preferences/jetbrains.idea.*.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
