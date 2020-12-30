cask "intellij-idea" do
  version "2020.3.1"
  sha256 "ed193f2fde56b79eb119b17ac7f87f72c830b351e2cfe614895ca294a24a1f6d"

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release"
  name "IntelliJ IDEA Ultimate"
  homepage "https://www.jetbrains.com/idea/"

  auto_updates true

  app "IntelliJ IDEA.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "idea") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Preferences/com.jetbrains.intellij.plist",
    "~/Library/Caches/IntelliJIdea#{version.major_minor}",
    "~/Library/Logs/IntelliJIdea#{version.major_minor}",
    "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
