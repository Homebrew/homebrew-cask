cask "intellij-idea" do
  version "2021.2,212.4746.92"

  if Hardware::CPU.intel?
    sha256 "c23ee9f68abbd503e5019c745cc5bf2a308f81e8c2bbd210ccfafbc1124c1e59"

    url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  else
    sha256 "d7c81531650f4f219f51de348b313af1696792d1ce62518637a4d61a1b2021a7"

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
