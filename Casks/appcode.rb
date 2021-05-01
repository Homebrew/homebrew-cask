cask "appcode" do
  version "2021.1,211.6693.150"

  if Hardware::CPU.intel?
    sha256 "d718e4f69107793038cc6738cf775f3426e4a1d3f5da9eff4cff55e408e4e946"
    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  else
    sha256 "05346c6b28b46ce4c19aa724869acb47befc5192ff814960179e113713f85e82"
    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}-aarch64.dmg"
  end

  name "AppCode"
  desc "IDE for Swift, Objective-C, C, and C++ development"
  homepage "https://www.jetbrains.com/objc/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

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
