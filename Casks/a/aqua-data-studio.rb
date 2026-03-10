cask "aqua-data-studio" do
  version "25.6.0"
  sha256 "a8431d8f341f00871fc2db5b8747dbf73b3c08461cbfed8a4c236800adedfeb2"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz",
      verified: "downloads.aquafold.com/"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://aquadatastudio.com/"

  livecheck do
    url "https://aquadatastudio.com/support-update/"
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
