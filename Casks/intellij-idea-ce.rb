cask "intellij-idea-ce" do
  version "2020.2.4,202.8194.7"
  sha256 "3918ee5631b683cfc3e42660a9b7b3384a328c128232735b3552b354673359e7"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  auto_updates true

  app "IntelliJ IDEA CE.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "idea") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Caches/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Logs/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
