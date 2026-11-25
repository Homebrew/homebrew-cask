cask "aqua-data-studio" do
  version "26.1.0"
  sha256 "bbb1cb4d1074d8500ad24fa9a7c545a27957f806e5e30baac9cacf665f99ad4c"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://aquadatastudio.com/"

  livecheck do
    url "https://aquadatastudio.com/support-update/"
    regex(/>\s*Version\s?v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Aqua Data Studio.app"

  zap trash: [
    "~/.datastudio",
    "~/Library/Saved Application State/com.aquafold.datastudio.DataStudio.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
