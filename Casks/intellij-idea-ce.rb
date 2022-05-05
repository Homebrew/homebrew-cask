cask "intellij-idea-ce" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1,221.5080.210"

  if Hardware::CPU.intel?
    sha256 "6f9dddab5c280bb2ad6bb8d46bcc85c1b167974ce4b412a68faf31f7f7d1c194"
  else
    sha256 "f61bdf70e373a948a71331e68a7303bf90cf47ea4e2f97338aaf96d19e8862c4"
  end

  url "https://download.jetbrains.com/idea/ideaIC-#{version.csv.first}#{arch}.dmg"
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
