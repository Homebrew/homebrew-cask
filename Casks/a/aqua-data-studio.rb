cask "aqua-data-studio" do
  version "24.0.0"
  sha256 "f78902367761ce90fcde968d09d38d9d324a166ca9a4e6912753c02896a6f182"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://www.aquafold.com/aquadatastudio"

  livecheck do
    url "https://www.aquafold.com/support-update/"
    regex(/>\s*Version\s?v?(\d+(?:\.\d+)+)/i)
  end

  app "Aqua Data Studio.app"

  zap trash: [
    "~/.datastudio",
    "~/Library/Saved Application State/com.aquafold.datastudio.DataStudio.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
