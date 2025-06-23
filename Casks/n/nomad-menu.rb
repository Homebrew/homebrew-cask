cask "nomad-menu" do
  version "1.2.2"
  sha256 :no_check

  url "https://files.nomad.menu/NoMAD.pkg"
  name "NoMAD"
  homepage "https://nomad.menu/"

  livecheck do
    url "https://nomad.menu/support/"
    regex(/NoMAD\s+Downloads[^<]*Current\s+Version\s+(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  pkg "NoMAD.pkg"

  uninstall pkgutil: "com.trusourcelabs.NoMAD"

  zap trash: [
    "~/Library/Application Support/CrashReporter/NoMAD*",
    "~/Library/Logs/DiagnosticReports/NoMAD*",
    "~/Library/Preferences/com.trusourcelabs.NoMAD.plist",
  ]
end
