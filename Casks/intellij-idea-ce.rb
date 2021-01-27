cask "intellij-idea-ce" do
  version "2020.3.2"

  if Hardware::CPU.intel?
    sha256 "008259b4df15cea0d38edc55e166dc24b7973ad3a4985ce2ebaa02b6023a66ac"

    url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  else
    sha256 "440157793e71aabe15385dbd0fc5d94bbf6e27dae53564ce49fcf866f1468b6f"

    url "https://download.jetbrains.com/idea/ideaIC-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/intellij-idea-ce19"

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
