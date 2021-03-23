cask "clion" do
  version "2020.3.3"

  if Hardware::CPU.intel?
    sha256 "0d31c1767397d1757a6fd560cd1214a702dc516887b2403ef32ad59f2cbb3935"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  else
    sha256 "cbbfb7ebfe2763a8b141a0d8f0852bc034c42391cf5b42947c4608236dd7f88f"
    url "https://download.jetbrains.com/cpp/CLion-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
  name "CLion"
  desc "C and C++ IDE"
  homepage "https://www.jetbrains.com/clion/"

  auto_updates true

  app "CLion.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "clion") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/CLion#{version.major_minor}",
    "~/Library/Caches/CLion#{version.major_minor}",
    "~/Library/Logs/CLion#{version.major_minor}",
    "~/Library/Preferences/CLion#{version.major_minor}",
  ]
end
