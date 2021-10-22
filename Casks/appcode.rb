cask "appcode" do
  version "2021.2.3,212.5457.62"

  if Hardware::CPU.intel?
    sha256 "a29e6e589a44d28076231890a8d52ba779bc53b5a83ff8db5b0c07fbc83c796f"

    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  else
    sha256 "ed318fea5a5ef147d47892f962f6c4f22fda9d75ac79ad4ba621d140f4030afe"

    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}-aarch64.dmg"
  end

  name "AppCode"
  desc "IDE for Swift, Objective-C, C, and C++ development"
  homepage "https://www.jetbrains.com/objc/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["AC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AppCode.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "appcode") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/AppCode#{version.major_minor}",
    "~/Library/Caches/AppCode#{version.major_minor}",
    "~/Library/Logs/AppCode#{version.major_minor}",
    "~/Library/Preferences/AppCode#{version.major_minor}",
  ]
end
