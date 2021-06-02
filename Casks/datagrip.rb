cask "datagrip" do
  version "2021.1.2,211.7442.38"

  if Hardware::CPU.intel?
    sha256 "fb78f81f43a9a651a8daef43a4bb28dc2410372828636f5e6b0869a58941cbc8"

    url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  else
    sha256 "d0d851dac290db1fef2e367da8a979213bd9cad188f843e5d3b8edf4475a229d"

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
