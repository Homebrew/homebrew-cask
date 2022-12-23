cask "appcode" do
  arch arm: "-aarch64"

  version "2022.3.1,223.8214.62"
  sha256 arm:   "9b4ff9dc1677369f069f09a7a0a3b8246b0f508ee14183c8fad48415ee3af0fa",
         intel: "111cb57c188c2bffe3ca1aa3a06a610bbe9b74e44927b257bc487c6ef3baa480"

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

  caveats do
    discontinued
  end
end
