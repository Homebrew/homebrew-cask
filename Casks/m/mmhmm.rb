cask "mmhmm" do
  version "3.5.2"
  sha256 :no_check

  url "https://updates.mmhmm.app/mac/hybrid/beta/mmhmm.pkg"
  name "mmhmm Desktop"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/product"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2025-05-25", because: :discontinued

  auto_updates true
  depends_on macos: ">= :ventura"

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
