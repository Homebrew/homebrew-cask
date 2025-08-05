cask "aqua-data-studio" do
  version "25.0.1"
  sha256 "b6429745cbe17f7017aa052e2ea155d8ea88ef53723fe64705d9b4c4117f8409"

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
