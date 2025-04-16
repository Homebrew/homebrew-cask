cask "firefox@beta" do
  version "138.0b8"

  language "cs" do
    sha256 "ef5c0fe7a82e507be7eaa8826d134c07aad5f4e19f1aa464df94a98f6840dbc8"
    "cs"
  end
  language "de" do
    sha256 "4b1d8c58e51a4332630d13f87e66b7ad38e79c93cec83a64dedaa7c5d64dd627"
    "de"
  end
  language "en-CA" do
    sha256 "12535b93437fd4535371edcd0572ab8d01a31b9ad5912d739b721caf6a1674f9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6410be993210bcf813f4473afed28a1d543e6e245f71e2f50264b905b0fea1de"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0d1298ab60edf498faea3a9b6afbd01640e0f025300a331ff6c5a96b880cf361"
    "en-US"
  end
  language "es-AR" do
    sha256 "c6ace9ab85a2ff8bb7fa98d5359aa26e4a9f0b6f3e40b35826b745db0d893335"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c424c0c9b9ab1be6d5593f2df746148db0c7400f88666341e406fc473e081d8d"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d9e1911a823c5b0f4e5e8fc5243b34c6b30b30139fa9763026d5b32843fa0415"
    "es-ES"
  end
  language "fi" do
    sha256 "7e43c945677668ecdb603b0498ca4a2d968e9f5e730b227ae3657ab2f32437ce"
    "fi"
  end
  language "fr" do
    sha256 "e398b718ee37fbae93174cfdceb249308eee25d4f0d20261edd06edf093d4c44"
    "fr"
  end
  language "gl" do
    sha256 "90272ff14339b2edad8619ab6fb3791bd4e85c4e497baf92eb868593be67e4cc"
    "gl"
  end
  language "in" do
    sha256 "3b40f93660e7197891d98e204e679327dfd7096666cdd9afd14040e5941730d0"
    "hi-IN"
  end
  language "it" do
    sha256 "51d5be10517a4f1bcf3b1141539461bf490064b3083bf19ef98d2ec70afd0b99"
    "it"
  end
  language "ja" do
    sha256 "7e443faf30353be58ce8bb11ce127b4d738c1fe29e6440ed9aa37d5f701b60e2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ee09a8fe2e9a06eca2414f6b0051816cf787fdb2350b79dab8dff887dd421964"
    "nl"
  end
  language "pl" do
    sha256 "bdb713475377f64cd735c8cce23603c06a41302dca419f94b3c91f62486b9c77"
    "pl"
  end
  language "pt-BR" do
    sha256 "956e3deb5401d1af7018ec5e8a8cfc159c6545d0ee34bb2aafada44252b56866"
    "pt-BR"
  end
  language "pt" do
    sha256 "1d259f691f9b962a9bb10730e52e31ac23c6ebef96cc1ee108e23cb610c926b2"
    "pt-PT"
  end
  language "ru" do
    sha256 "2fb65dcdd3ba740f2f9144dc386181182a26e20f2c793ef1d7f54620fd12660d"
    "ru"
  end
  language "uk" do
    sha256 "e1efb08c50ac8dde42e20f4acb5f67ef511ea47f289bef414374bce1a72af62d"
    "uk"
  end
  language "zh-TW" do
    sha256 "41bb7e5d1ec99c305b11103812941805e535b7485f492676f8745df410a339ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "189a8dc55235fc81d38fea74b651d3b1fb88b1540654a233b429b8fd74348b12"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
