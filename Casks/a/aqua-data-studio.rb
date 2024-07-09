cask "aqua-data-studio" do
  version "23.2.0"
  sha256 "eeb6947b5cdec1346a8af109268c7bec74668031dbc924197142346f24f6e8f2"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://www.aquafold.com/aquadatastudio"

  livecheck do
    url "https://www.aquafold.com/support-update/"
    regex(/href=["'].*?["']>Version\s?(\d+(?:\.\d+)+)/i)
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
