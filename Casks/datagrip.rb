cask "datagrip" do
  version "2021.1.3"

  if Hardware::CPU.intel?
    sha256 "f640ca34a6845fd4f02480d6fe6555672d6eeb4034f4c0a73b5c1808d2cd0688"

    url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  else
    sha256 "dcfda4f2022e510df656d4e1e4eade68dbb28fdbbbcf0d21951efc03fc8e9f2b"

    url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}-aarch64.dmg"
  end

  name "DataGrip"
  desc "Databases & SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["DG"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
