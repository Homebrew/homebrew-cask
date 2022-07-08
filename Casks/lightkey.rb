cask "lightkey" do
  version "4.0,312df42cc2-1657273495"
  sha256 "c9f94b37139fcf60e84dcf64d904e939d46849a2dddb37fdde55998491c3b94f"

  url "https://lightkeyapp.com/media/pages/download/Lightkey-#{version.csv.first.dots_to_hyphens}/#{version.csv.second}/LightkeyInstaller.zip"
  name "Lightkey"
  desc "DMX lighting control"
  homepage "https://lightkeyapp.com/"

  livecheck do
    url "https://lightkeyapp.com/en/download"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Lightkey[._-]v?(\d+(?:-\d+)+)/([^/]+)/LightkeyInstaller\.zip}i)
      next if match.blank?

      "#{match[1].tr("-", ".")},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "LightkeyInstaller.pkg"

  uninstall delete:  "/Applications/Lightkey.app",
            pkgutil: [
              "de.monospc.lightkey.pkg.App",
              "de.monospc.lightkey.pkg.documentation",
              "de.monospc.lightkey.pkg.OLA",
            ]

  zap trash: [
    "~/Library/Application Support/Lightkey",
    "~/Library/Caches/de.monospc.Lightkey",
    "~/Library/Logs/Lightkey OLA.log",
    "~/Library/Preferences/de.monospc.Lightkey.plist",
  ]
end
