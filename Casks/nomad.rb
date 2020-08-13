cask "nomad" do
  version :latest
  sha256 :no_check

  url "https://files.nomad.menu/NoMAD.pkg"
  name "NoMAD"
  homepage "https://nomad.menu/"

  depends_on macos: ">= :yosemite"

  pkg "NoMAD.pkg"

  uninstall pkgutil: "com.trusourcelabs.NoMAD"

  zap trash: [
    "~/Library/Application Support/CrashReporter/NoMAD*",
    "~/Library/Logs/DiagnosticReports/NoMAD*",
    "~/Library/Preferences/com.trusourcelabs.NoMAD.plist",
  ]
end
