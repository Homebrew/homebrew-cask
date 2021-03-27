cask "appcode" do
  version "2020.3.3,203.7148.89"

  if Hardware::CPU.intel?
    sha256 "e2dfbbaafb52dfa5dd8b7dfcdc2eb4cc49c560c5fdfa285f8116c737bac34df7"
    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  else
    sha256 "050406b4a2e7e6cfebb8353aad3dc1711138620dffccced0c311bafbe6705cb7"
    url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release"
  name "AppCode"
  desc "IDE for Swift, Objective-C, C, and C++ development"
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
