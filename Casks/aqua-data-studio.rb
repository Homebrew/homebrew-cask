cask "aqua-data-studio" do
  version "22.3.0"
  sha256 "5f9452967db2ab259ecf9ac18d4c4d4ef3841de4a94269cf190b7119484b604d"

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
end
