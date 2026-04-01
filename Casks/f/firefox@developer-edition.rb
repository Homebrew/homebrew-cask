cask "firefox@developer-edition" do
  version "150.0b4"

  language "ca" do
    sha256 "0fddda318dc8d6e933475ebeca1c20e843d046c5b944223895719893f458db68"
    "ca"
  end
  language "cs" do
    sha256 "097b7cee6d29f54120a5ea80431f03cfb7e93a8768289546d08e5894ae9a9bbf"
    "cs"
  end
  language "de" do
    sha256 "6097655c69b45c9eaeee7593666973d6d8b7010b63aec9de08da4b49a1bb8f8b"
    "de"
  end
  language "en-CA" do
    sha256 "52fa64a8dda3dc760983909b5b855e18540f7a03a0f79235449f76e018028184"
    "en-CA"
  end
  language "en-GB" do
    sha256 "771d8ede31963bf69d190031559ebfc0a0eb14b3a9aa0d6275bbecd5c6df7677"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7daaa37857556552b04f30460af3fa91724a088b0e88189fc313b5e93b1a716a"
    "en-US"
  end
  language "es" do
    sha256 "a2bf9d79f9a4b7a651ba861c061972fcb8acfa4987d7c97ac961a39b36af439e"
    "es-ES"
  end
  language "fr" do
    sha256 "f56d97017ac558bd1b7559403da95f6876e10cf0af12bca82683f29a295b2ec3"
    "fr"
  end
  language "it" do
    sha256 "5325de5aae8faabb0a6a46b7ee14671e5f20ebd4ef0e6cf6a6147fc9369c0490"
    "it"
  end
  language "ja" do
    sha256 "3fe5a0352a9b75c0e750f59baa6b2f3f5d805ba661e9e1e3b7c3d7b45873a755"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d0746e6296325ad110e5ab4d38ea482aa8cb77a4b39b98017d890a83eb2f807f"
    "ko"
  end
  language "nl" do
    sha256 "60ee88ece410155b982f0f63a5ddeab0eb80f5c04b239390f66cd50014b0aba4"
    "nl"
  end
  language "pt-BR" do
    sha256 "fc5c9d1795d560f8c7c4891192ee7db7737a3eead9c3438bb103e681c540dce9"
    "pt-BR"
  end
  language "ru" do
    sha256 "7bd3f7bb5d2717f18fc492843a5712ba5bdea941ba878afaf1dcd3666701cdd6"
    "ru"
  end
  language "uk" do
    sha256 "982bf54f45a7c748280d43ee33db8aa8ad83bb5c7e9ff3c107d6a863c2d0ee3b"
    "uk"
  end
  language "zh-TW" do
    sha256 "aeea8d64d1b8cdf051ce388a60cb33886b82e8eebd1bf29651d16885bd6b8159"
    "zh-TW"
  end
  language "zh" do
    sha256 "781c7534061e4f3aa0083acc503fe6453189dab64cc4ef1b3e0af25535b10daa"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
