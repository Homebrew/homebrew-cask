cask "microsoft-365-copilot" do
  version "1.2605.2501"
  sha256 "939836dc7d0c4403d0ffbc8fe138d75959b98898376886273114b36f64f56ea1"

  url "https://res.cdn.office.net/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_365_Copilot_universal_#{version}_Installer.pkg",
      verified: "res.cdn.office.net/"
  name "Microsoft 365 Copilot"
  desc "AI-first productivity assistant for Microsoft 365"
  homepage "https://www.microsoft.com/en-us/microsoft-365/copilot-app"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2325438"
    regex(%r{/Microsoft[._-]365[._-]Copilot.*?_(\d+(?:\.\d+)+)_[^/]*\.pkg}i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "Microsoft_365_Copilot_universal_#{version}_Installer.pkg"

  uninstall pkgutil: "com.microsoft.m365copilot"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.m365copilot",
    "~/Library/Containers/com.microsoft.m365copilot",
    "~/Library/Preferences/com.microsoft.m365copilot.plist",
  ]
end
