cask "intellij-idea" do
  version "2020.3.3"

  if Hardware::CPU.intel?
    sha256 "8f0cfa933b7e5dddde4bae120d35e9e0ffbe98c1d7f122c4c043e528bacda994"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  else
    sha256 "e3c34033f5e45bcf94da787560ee0e9c558786818bb20b61bf010b91c7309455"
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
