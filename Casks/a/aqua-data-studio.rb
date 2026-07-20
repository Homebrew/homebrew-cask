cask "aqua-data-studio" do
  version "26.0.0"
  sha256 "56eb1f06f01008f5d307f522ed4327b4c174cbea3c34e15645300d32c577514c"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz",
      verified: "downloads.aquafold.com/"
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
