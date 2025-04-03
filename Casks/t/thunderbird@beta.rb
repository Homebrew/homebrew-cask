cask "thunderbird@beta" do
  version "138.0b1"

  language "cs" do
    sha256 "c089e7c58eac93042de8b7287f1445d129458a4a57ac14d13c665a3cb9f3ac48"
    "cs"
  end
  language "de" do
    sha256 "067168e414a39ecbe7532c8e96d559e6ff50c27145d615d889ae7890e616a772"
    "de"
  end
  language "en-GB" do
    sha256 "2b3dede65af22eedd46fd4bdb954b77b2b70221472400a9ebd1baa6b70449408"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1cb8038749098cb64475fe63774fdc6844c23c2ed95e753bdc3a8cea4d573c8"
    "en-US"
  end
  language "fr" do
    sha256 "2e1e03c77f1fb36588b6174c2d5e084dba5383665236489d2a41ad04242dfc94"
    "fr"
  end
  language "gl" do
    sha256 "ee3be54eac61c245006a4996e8a39f5ec5fce15b3c230e8de1467fc9aa420d4d"
    "gl"
  end
  language "it" do
    sha256 "65a06b6a043ebc42c5382911bb5c4ee09224c3e813f7cc50bdd315f6c80a6cd6"
    "it"
  end
  language "ja" do
    sha256 "79b8d670578d91d01dc3d0807081b95fb2895a5e1ceeac4356395abf111e7e6a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b110c6254ffef9fda0c5682f5fe521e08c57090ca3d9c687e3300f26f8a13eee"
    "nl"
  end
  language "pl" do
    sha256 "78656f89a1c26f514f05f62418669f392ba02868af0e883be2e49cbb61c43ecd"
    "pl"
  end
  language "pt" do
    sha256 "272521d0a982d88e47a67660847f8759317ebbdcb9d8251aac8443fc5fade21f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bfab0b023d9809c9dd90d136ec52d6314161b4192999deed4e14a2ba2ee4b102"
    "pt-BR"
  end
  language "ru" do
    sha256 "56042456dfc085a4724ddce98bbef17f52886c9f6811dc396043ad169771566d"
    "ru"
  end
  language "uk" do
    sha256 "636d6d6172105ad73a65765118cd159218849eb48952b5bc721f9fd33dfc40a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "f9cb46a32bd8b98284ba0260aa5e28059e20f09f859be1541f664ead45998473"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c7e3f70df628a234fe29e95324d3b6655551e445c39007ef3a50cb209382b93"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
