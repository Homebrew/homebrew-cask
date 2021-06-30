cask "intellij-idea" do
  version "2021.1.3,211.7628.21"

  if Hardware::CPU.intel?
    sha256 "860c712fdd645229375ec3d091eeb98f8f9ea9b955a2e5cfc4e8f5c276485e46"

    url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  else
    sha256 "264b053b43cfe60d591c9074738ee9bab374eec5518947fffa9db65ffeb0c288"

    url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}-aarch64.dmg"
  end

  name "IntelliJ IDEA Ultimate"
  desc "Java IDE by JetBrains"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["IIU"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
    "~/Library/Preferences/jetbrains.idea.*.plist",
    "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
    "~/Library/Caches/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Logs/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Application Support/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
