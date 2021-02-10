cask "datagrip" do
  version "2020.3.2"

  if Hardware::CPU.intel?
    sha256 "dbdc49e06cf2d120e55eecaa0cb6d5588a9ca73b0efd4607d6c2ad4fc8a36d0b"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  else
    sha256 "95d28b0a0faa9a6e131bfef9bfe321bdf028be7624345e3416c0f26ef7a95f96"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
  name "DataGrip"
  desc "Databases & SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  auto_updates true

  app "DataGrip.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "datagrip") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip#{version.major_minor}",
    "~/Library/Caches/JetBrains/DataGrip#{version.major_minor}",
    "~/Library/Logs/JetBrains/DataGrip#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
