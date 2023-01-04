cask "mmhmm-desktop" do
  version "1.0.3,1668556000"
  sha256 :no_check

  url "https://updates.mmhmm.app/mac/hybrid/beta/mmhmm.pkg"
  name "mmhmm desktop"
  desc "Present with a virtual camera with camera effects"
  homepage "https://www.mmhmm.app/product"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/265ddc8d-5266-478a-af9f-3798b1aab2ac"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "mmhmm.pkg"

  uninstall pkgutil: "app.mmhmm.hybrid",
            quit:    "app.mmhmm.hybrid"

  zap trash: [
    "~/Library/Preferences/app.mmhmm.hybrid.plist",
    "~/Library/Caches/app.mmhmm.hybrid",
    "~/Library/Saved Application State/app.mmhmm.hybrid.savedState",
    "~/Library/Application Support/mmhmm",
    "~/Library/Caches/mmhmm",
  ]
end
