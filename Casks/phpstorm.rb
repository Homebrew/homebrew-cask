cask "phpstorm" do
  version "2021.1.4,211.7628.25"

  if Hardware::CPU.intel?
    sha256 "3d19209814b08db70c5add5b14501ffd4ab6ff9c6696e672e757be6b7ea08329"

    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  else
    sha256 "c9df401adaa3991cef6297f979e700ffddfdaa231943b84f7e1deef44bd2c9d3"

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
