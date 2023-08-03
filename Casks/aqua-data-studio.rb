cask "aqua-data-studio" do
  version "23.0.0"
  sha256 "a35012f56e08355d283b91e60ffdec4f1d2e504307430e7f49714340153184c6"

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
