cask "appcode" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.2.4,212.5457.65"

  if Hardware::CPU.intel?
    sha256 "33c8e4278fa0578f283a520f6e0394fc7a378641e8ee90fdca69c11072f48a84"
  else
    sha256 "430be9ed4c700fe10d257abebbbedbc6fbe8d594c6a0683d98c1e3d01efb3f2a"
  end

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}#{arch}.dmg"
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
