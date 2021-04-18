cask "phpstorm" do
  version "2021.1.1,211.7036.8"

  if Hardware::CPU.intel?
    sha256 "94df67e2fb8c2c63ae5d221c4c7d129e56fd959a1b6fd1e1a97c5d23a8272d83"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  else
    sha256 "465aa85bc86f16de6e75a056e855aeab6e6b6104e478f963f19311eede0c98da"
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
