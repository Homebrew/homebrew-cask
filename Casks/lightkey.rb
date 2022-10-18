cask "lightkey" do
  version "4.0.6,4d8e1d2e3c-1665749184"
  sha256 "9b1e376e084025cf08e7253389cc030d1ba163db1ee537cfe94e203d8d2bc011"

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
  depends_on macos: ">= :big_sur"

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
