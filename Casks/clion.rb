cask "clion" do
  version "2020.3,203.5981.166"
  sha256 "1a1c13688c3044b3531985deb9c6ff169c1395275c7b17f59127c66a85ef3ba6"

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
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
