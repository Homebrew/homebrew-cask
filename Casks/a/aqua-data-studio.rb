cask "aqua-data-studio" do
  version "23.1.0"
  sha256 "4436481444038cb5321d9341eb47ad08402a203670a1e3402094d568516a7c56"

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
