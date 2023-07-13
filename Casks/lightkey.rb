cask "lightkey" do
  version "4.3.2.1,ef52327f54-1689229248"
  sha256 "eadfe7aa4ec1cc9e3ed365ec973596a4b435f01ebbe3ed9f9f62d38e8fdabcd1"

  url "https://lightkeyapp.com/media/pages/download/Lightkey-#{version.csv.first.dots_to_hyphens}/#{version.csv.second}/LightkeyInstaller.zip"
  name "Lightkey"
  desc "DMX lighting control"
  homepage "https://lightkeyapp.com/"

  livecheck do
    url "https://lightkeyapp.com/en/download"
    regex(%r{/Lightkey[._-]v?(\d+(?:-\d+)+)/([^/]+)/LightkeyInstaller\.zip}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map do |match|
        "#{match[0].tr("-", ".")},#{match[1]}"
      end
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
