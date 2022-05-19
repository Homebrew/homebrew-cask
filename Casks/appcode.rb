cask "appcode" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1.1,221.5591.52"

  if Hardware::CPU.intel?
    sha256 "0875d0c80c876622df7d4c6d6377d384bd6be4c5bed11d612467a0958870dfe9"
  else
    sha256 "0eaf59b15599cf80a333a613330cbc5aa7fb1cd284367ea1083e3b478676bc3c"
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
