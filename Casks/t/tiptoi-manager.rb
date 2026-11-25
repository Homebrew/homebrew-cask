cask "tiptoi-manager" do
  version "5.3"
  sha256 "62dc38a2f41c7a2db310a6c8f2ed7a77dd27222f02645bdd778d086076c454cc"

  url "https://files.tiptoi.ravensburger.cloud/Installer/#{version}/tiptoi_Manager_Installer.pkg"
  name "tiptoi Manager"
  desc "Manage the data on children's Ravensburger tip toi audio pen"
  homepage "https://service.ravensburger.de/tiptoi%25C2%25AE/tiptoi_Manager"

  livecheck do
    url "https://www.ravensburger.de/de-DE/entdecken/tiptoi/tiptoi-manager"
    regex(%r{/Installer/v?(\d+(?:\.\d+)+)/tiptoi_Manager_Installer\.pkg}i)
  end

  auto_updates true
  depends_on :macos

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
