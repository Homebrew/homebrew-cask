cask "appcode" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.2,222.3345.144"

  if Hardware::CPU.intel?
    sha256 "68f929177be0b90bebec53615750a765cb10c917925286a1d82a71e7c3e3b737"
  else
    sha256 "94f2e968ff184b94be516e26cf750c35e5e3d13a3a4edba583f8b1aab05473cc"
  end

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.first}#{arch}.dmg"
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
      if File.readable?(path) &&
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
