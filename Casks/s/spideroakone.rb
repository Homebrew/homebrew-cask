cask "spideroakone" do
  version "7.5.0"
  sha256 :no_check

  on_high_sierra do
    url "https://spideroak.com/release/spideroak/osx_hs"
  end
  on_mojave :or_newer do
    url "https://spideroak.com/release/spideroak/osx"
  end

  name "SpiderOak One Backup"
  desc "Cloud backup and storage"
  homepage "https://spideroak.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  disable! date: "2024-06-07", because: :no_longer_available

  depends_on macos: ">= :high_sierra"

  pkg "SpiderOakONE.pkg"

  uninstall signal:  ["TERM", "com.spideroak.orange.client"],
            pkgutil: "org.python.python"

  zap trash: "~/Library/Application Support/SpiderOakONE"
end
