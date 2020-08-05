cask "appcode" do
  version "2020.2,202.6397.122"
  sha256 "4f07dacd72db5c624e74a2dd3f7cd2fe21c65a4363c355de7b42eca2075c1bd7"

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release"
  name "AppCode"
  homepage "https://www.jetbrains.com/objc/"

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
