cask "phpstorm" do
  version "2021.2.2,212.5284.49"

  if Hardware::CPU.intel?
    sha256 "1a5b835eade87ebdfb5c828d5708990594d28e88e4d71b983f2e544274c71b2d"

    url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  else
    sha256 "2804ea007ccc596ad6d230825f504ac5624fd4852db9dc980db16ffed6024ce3"

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
