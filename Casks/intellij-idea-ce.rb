cask "intellij-idea-ce" do
  version "2020.1.4,201.8743.12"
  sha256 "635691fe8fd8eab26ba11dc39abc91a6aea8867dbe98eeae76dd3f2856a45833"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
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
    "~/Library/Application Support/IdeaIC#{version.major_minor}",
    "~/Library/Caches/IdeaIC#{version.major_minor}",
    "~/Library/Logs/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
