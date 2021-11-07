cask "phpstorm" do
  version "2021.2.3,212.5457.49"

  if Hardware::CPU.intel?
    sha256 "1f538f406ce0e48afc2db8f461610b23717101585ead2e4bbb899a0d09b36e41"

    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  else
    sha256 "74fe76a710eac4403faa4223edee3014f5b29c2f56ae62100c89466283e4a85e"

    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}-aarch64.dmg"
  end

  name "JetBrains PhpStorm"
  desc "PHP IDE by JetBrains"
  homepage "https://www.jetbrains.com/phpstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["PS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
