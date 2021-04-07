cask "intellij-idea" do
  version "2021.1"

  if Hardware::CPU.intel?
    sha256 "76e1ddef6054cbffd3bc5a2068298fdb5a14ab1fbfd8499148eb8221e47a5397"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  else
    sha256 "689b9e3253d80e922fccb8fc3aa230c7efcc4afade1b74f93c0272d34451b7ca"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}-aarch64.dmg"
  end

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
