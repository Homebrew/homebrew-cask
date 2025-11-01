cask "digicheck-ng" do
  version "0.93"
  sha256 "480527330adc9294cfcfad4f489ca8f3e9d258ce0688374ea45633ace22f5f67"

  url "https://rme-audio.de/downloads/digicheck_ng_mac_#{version.no_dots}.zip"
  name "DigiCheck NG"
  desc "Audio analysis software"
  homepage "https://rme-audio.de/digicheck-ng.html"

  livecheck do
    url "https://rme-audio.de/downloads.html"
    regex(/DigiCheck\s*NG.*?v?\s*?(\d+(?:\.\d+)+)[<" ]/i)
  end

  pkg "DigicheckNG_#{version.no_dots}.pkg"

  uninstall quit:    [
              "de.rme-audio.digicheck.help",
              "de.rme-audio.digicheckng",
            ],
            pkgutil: "de.rme-audio.digicheckng"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.rme-audio.digicheckng.sfl*",
    "~/Library/Application Support/RME DigiCheck",
    "~/Library/Caches/com.apple.helpd/Generated/de.rme-audio.digicheck.help*",
  ]
end
