cask "duplicate-annihilator-for-photos" do
  version "9.1.0,1"
  sha256 :no_check

  url "https://brattoo.com/propaganda/downloadDap.php"
  name "Duplicate Annihilator for Photos"
  desc "Photo duplicate detector"
  homepage "https://brattoo.com/duplicateannihilator/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Duplicate Annihilator for Photos.app"

  uninstall pkgutil: "com.brattoo.pkg.brattoosystemfiles"

  zap trash: [
    "~/Library/Application Support/Duplicate Annihilator Photos",
    "~/Library/Caches/com.brattoo.Duplicate-Annihilator-for-Photos",
    "~/Library/HTTPStorages/com.brattoo.Duplicate-Annihilator-for-Photos",
    "~/Library/Logs/com.brattoo.duplicate-annihilator-photos",
    "~/Library/Preferences/com.brattoo.annihilator-photos.plist",
    "~/Library/Saved Application State/com.brattoo.Duplicate-Annihilator-for-Photos.savedState",
  ]
end
