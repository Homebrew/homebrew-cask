cask "intellij-idea-ce" do
  version "2020.3.3"

  if Hardware::CPU.intel?
    sha256 "ae786cd8f4302c6bb92af166416c92673cded9971011016fceba9d92e0968d96"

    url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  else
    sha256 "941e0730a807160799667186619ce1eae429bb1f6f6af707c29888b618b176eb"

    url "https://download.jetbrains.com/idea/ideaIC-#{version}-aarch64.dmg"
  end

  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
    strategy :page_match
    regex(%r{/ideaIC-(\d+(?:\.\d+)*)\.dmg}i)
  end

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
