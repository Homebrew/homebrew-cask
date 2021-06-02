cask "intellij-idea" do
  version "2021.1.2,211.7442.40"

  if Hardware::CPU.intel?
    sha256 "3e2dcb9e4c91cf5dcd28b2ce1eede51d2fbb0111c669f981551c3dc296ec825b"

    url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  else
    sha256 "b02f12c7725ee907b32b7037300e0a50aeb7ce7509016ab254851a0f25516850"

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
    "~/Library/Caches/IntelliJIdea#{version.major_minor}",
    "~/Library/Logs/IntelliJIdea#{version.major_minor}",
    "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
