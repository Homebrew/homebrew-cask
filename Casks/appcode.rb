cask "appcode" do
  version "2020.3.4,203.7717.57"

  if Hardware::CPU.intel?
    sha256 "dcb50aef60debcc58436aaea5df7c92282dc4c4924df372a00b7cbcf95447464"
    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  else
    sha256 "99b3b5aed04179e5d34f377602a6f99225136cbd97bac03d53366e497a68b67f"
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
