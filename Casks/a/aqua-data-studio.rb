cask "aqua-data-studio" do
  version "24.1.1"
  sha256 "e62fc92024b4c6e2d12c38d939a37c40806b38d728ce632986a8023f875ecceb"

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
