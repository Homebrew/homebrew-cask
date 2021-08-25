cask "clion" do
  version "2021.2.1,212.5080.54"

  if Hardware::CPU.intel?
    sha256 "7e8272445a0eea521f0990167cc5aa96c9814f503cef9d6afab8175c6703c4a0"

    url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  else
    sha256 "40a5588c55dca06b8368733b44b0cf520815e2ef63cfd9bbe936009011696446"

    url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}-aarch64.dmg"
  end

  name "CLion"
  desc "C and C++ IDE"
  homepage "https://www.jetbrains.com/clion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["CL"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CLion.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "clion") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Preferences/jetbrains.clion.*.plist",
    "~/Library/Preferences/CLion#{version.major_minor}",
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
