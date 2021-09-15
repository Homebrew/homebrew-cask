cask "intellij-idea-ce" do
  version "2021.2.2,212.5284.40"

  if Hardware::CPU.intel?
    sha256 "f7fcbd58bc48afc3218670730afccdf4b87f632cf3680dbf5e526c4086c236ad"

    url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  else
    sha256 "e6d441f629aa5580fe3c278a9ff19fd6db669bee01acd63ea26173f6e737c80f"

    url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}-aarch64.dmg"
  end

  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["IIC"].map do |release|
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
