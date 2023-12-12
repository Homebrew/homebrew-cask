cask "intellij-idea-ce" do
  arch arm: "-aarch64"

  version "2023.3.1,233.11799.300"
  sha256 arm:   "0630913d6730073f8f06a26ef51a6b2e0599d93a5809718e74046bfea3023a86",
         intel: "e65b75aa6fa957880f5e0b435d8eaea570a9f4408caa7e7475a90b5e1017cd2a"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
    strategy :json do |json|
      json["IIC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/intellij-idea-ce19"
  depends_on macos: ">= :high_sierra"

  app "IntelliJ IDEA CE.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "idea") }.each do |path|
      if File.readable?(path) &&
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
