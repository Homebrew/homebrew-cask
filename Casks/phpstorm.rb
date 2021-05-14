cask "phpstorm" do
  version "2021.1.2,211.7142.44"

  if Hardware::CPU.intel?
    sha256 "f6371a659691c1ff58f6c81946207b1acd99539b89be3147c777130b4153c2df"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  else
    sha256 "b245a58612c0917235c108172a4e55c29ab89907a00522d696c32d3b81177201"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}-aarch64.dmg"
  end

  name "JetBrains PhpStorm"
  desc "PHP IDE by JetBrains"
  homepage "https://www.jetbrains.com/phpstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

  app "PhpStorm.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "pstorm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PhpStorm#{version.major_minor}",
    "~/Library/Caches/PhpStorm#{version.major_minor}",
    "~/Library/Logs/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.phpstorm.*.plist",
  ]
end
