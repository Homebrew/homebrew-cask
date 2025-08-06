cask "tiptoi-manager" do
  version "5.2"
  sha256 :no_check

  url "https://cdn.ravensburger.de/db/Installer/tiptoi_Manager_Installer.pkg"
  name "tiptoi Manager"
  desc "Manage the data on children's Ravensburger tip toi audio pen"
  homepage "https://service.ravensburger.de/tiptoi%25C2%25AE/tiptoi_Manager"

  livecheck do
    url "https://service.ravensburger.de/tiptoi%C2%AE/Produkte_FAQs/Hilfestellungen_tiptoi%C2%AE"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "tiptoi_Manager_Installer.pkg"

  uninstall quit:    "com.ravensburger.tiptoimanager",
            pkgutil: [
              "com.ravensburger.tiptoi.TipToiBindings",
              "com.ravensburger.tiptoimanager",
            ],
            delete:  "/Applications/tiptoi® Manager.app"

  zap trash: [
    "~/Library/Application Support/com.ravensburger.tiptoimanager",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.ravensburger.tiptoimanager",
    "~/Library/Preferences/com.ravensburger.tiptoimanager.plist",
    "~/Library/Saved Application State/com.ravensburger.tiptoimanager.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
