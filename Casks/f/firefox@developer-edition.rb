cask "firefox@developer-edition" do
  version "135.0b9"

  language "ca" do
    sha256 "e88eb9d9d4e64b584349d0c8bd56d288e8ac0133bbe402c92910a3c493a3ab90"
    "ca"
  end
  language "cs" do
    sha256 "4581fdfa8db2037ca3817186a8cfd893db4cba6fe43c834b67e9a28317188ddc"
    "cs"
  end
  language "de" do
    sha256 "9b11b417fc0ee5a1acc36abae8fba342477f1fb1b7fb257e7a472461922fba53"
    "de"
  end
  language "en-CA" do
    sha256 "a7044be3e20a5b8a516ac9ec7301d4e1c74a49a4ba89c462369237fcb9bc1b68"
    "en-CA"
  end
  language "en-GB" do
    sha256 "542e4d418ec46314ddf92527d3664a4e3babcfa85fc0fbb490887e1c26d5c2a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ee43eeae71db3e0f7e6976013f5249a0a7dac51eb30eda6aa8a0efd9f5a58d90"
    "en-US"
  end
  language "es" do
    sha256 "bfa3477db3947b3ef06bd47cfd1cbdf3d3b0b92a06e8e806b2105b003736150d"
    "es-ES"
  end
  language "fr" do
    sha256 "27d3c65a6c3a12c7672500a4bb83d12188a3f87e7d0bf1faef53e463725622ee"
    "fr"
  end
  language "it" do
    sha256 "3785b84da8758f8f6a168f841fa3e3d5e3f72233b4994e9d8dd6a767430dcec2"
    "it"
  end
  language "nl" do
    sha256 "1e79dcd7254fdfb8c350a0e9f7e34dc87360b2dcf162c230c62b544e3b8ed68d"
    "nl"
  end
  language "ja" do
    sha256 "a0fcf6de0ea073b2ad1fa97c06262d0a2bf741dcd0b593a9b3c8a9f027bb4387"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "94c5ef15bf4b2002fe4f823b42e2ef05a1fd98d42159fec58be29e194287164b"
    "pt-BR"
  end
  language "ko" do
    sha256 "fba3e3b3bbf58ab5289772f5f32d71ce253e4bc03cbe4a17790bb3464fef4009"
    "ko"
  end
  language "ru" do
    sha256 "380dc3f2fe1bfc2a94a6917d4da71cec2c0066faf57b1587454af42d1e146751"
    "ru"
  end
  language "uk" do
    sha256 "042ffc2d7f37a77526706d340bfabce25d26f1a78120cb38326f9833d1e25241"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a3e9ac716dc05e1056fcb0d0737e4481de3a3968b5c5e7310ac70fdf3cb878e"
    "zh-TW"
  end
  language "zh" do
    sha256 "18455c8ddb8d16b5319f99acf92c48215cd7bb7c31c4c74908e3388d1b50c1f1"
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
  depends_on macos: ">= :catalina"

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
