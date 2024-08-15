cask "mmhmm" do
  version "3.0.0"
  sha256 :no_check

  url "https://updates.mmhmm.app/mac/hybrid/beta/mmhmm.pkg"
  name "mmhmm Desktop"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/product"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/265ddc8d-5266-478a-af9f-3798b1aab2ac"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "mmhmm.pkg"

  uninstall quit:    "app.mmhmm.hybrid",
            pkgutil: "app.mmhmm.hybrid"

  zap trash: [
    "~/Library/Application Support/mmhmm",
    "~/Library/Caches/app.mmhmm.hybrid",
    "~/Library/Caches/mmhmm",
    "~/Library/Preferences/app.mmhmm.hybrid.plist",
    "~/Library/Saved Application State/app.mmhmm.hybrid.savedState",
  ]
end
