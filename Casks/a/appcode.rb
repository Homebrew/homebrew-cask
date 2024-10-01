cask "appcode" do
  arch arm: "-aarch64"


  version "2023.1.5,231.9423.10"
  sha256 arm:   "fe1b1e2258cd7ae954bddf96dc661584653b1d36603f39d0a93c6162e7e57702",
         intel: "5145f184d76cf852f4dbb247f8aa36e7c061a9055bd203d73399b8b00b053673"

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.first}#{arch}.dmg"
  name "AppCode"
  desc "A smart IDE for iOS/macOS development"
  homepage "https://www.jetbrains.com/objc/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release"
    strategy :json do |json|
      json["AC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
