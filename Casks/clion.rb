cask "clion" do
  version "2020.3.2"
  
  if Hardware::CPU.intel?
    sha256 "0a1f6447442a07f60094f9c96fd06141556daacea47c77beef8c2630e8eebc8b"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  else
    sha256 "5c4708b2bb4f1d39432ee84da8d195cbe83f987f1dd1d028bc78eebc067f46ba"
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
