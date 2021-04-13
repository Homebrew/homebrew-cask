cask "phpstorm" do
  version "2021.1"

  if Hardware::CPU.intel?
    sha256 "3e79bb5617623a7e4e9516affb320aa82c10ec10c386011db18c72585ef83565"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  else
    sha256 "465aa85bc86f16de6e75a056e855aeab6e6b6104e478f963f19311eede0c98da"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
  name "JetBrains PhpStorm"
  desc "PHP IDE by JetBrains"
  homepage "https://www.jetbrains.com/phpstorm/"

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
