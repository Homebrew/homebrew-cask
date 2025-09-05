cask "firefox@beta" do
  version "143.0b9"

  language "cs" do
    sha256 "f2802f26200b6a5684dc8508e3b14472ee51745ca2701f4e7bd07f6ca893cd34"
    "cs"
  end
  language "de" do
    sha256 "64d3aa8050f54a9ae145a0f53173f5b83f70ea8fd01e2328f33e11b6e191eea5"
    "de"
  end
  language "en-CA" do
    sha256 "c3a0a521513f63ec2922bea5e01cc24289a642650fc7b21d255ba0556170ed6a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fb8b8eeedba9930e2dc5489af38893c4ebb25c2d8735db0811de263e6bbefc84"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f0c3edd7987fa64023163e3850a5d71bc1c41c7ef4458bf54c486caa1c158dd"
    "en-US"
  end
  language "es-AR" do
    sha256 "f90221dd99d291b576da144e4cebec20124121556ecddb37f16df0e7c01285c7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ef33a4d4184147320200517dfe356b62a8553bb49d2ad2b81b076e130361d202"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6bd90ee628f267e9a9dfdda0a7bf7c25d9ffeceed9d431bf11baa45d5a7aa2ea"
    "es-ES"
  end
  language "fi" do
    sha256 "c0e797faacf2c398aea3aaa99e1d6bfb2de42d4bcdde57530172f8c9a94a0ae0"
    "fi"
  end
  language "fr" do
    sha256 "bfb5d2e2e6a45f4851f7fc925e376e543cbbe6c5ac9da96ae8a8ebd8a0331780"
    "fr"
  end
  language "gl" do
    sha256 "881541e6d9e5fd6fa9978052fa78589beadc82b81711e8e5a040f1378817167c"
    "gl"
  end
  language "in" do
    sha256 "336b28056ba0907aa17c503ce7bcc28bf0c30f0a750fa01417789d1e42381d86"
    "hi-IN"
  end
  language "it" do
    sha256 "1d9779ac6694a1a63f1ba2138ef2d37b9591b0266a377aeac13613bc9dc93d00"
    "it"
  end
  language "ja" do
    sha256 "e8970408d35820f241ac8c78d9054691328d36d68aaefbe762cd8bd9c6397f49"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7e34875f4001e647fd45229b30465c72325d3c0794cd9f33eefdc1e20f48151e"
    "nl"
  end
  language "pl" do
    sha256 "37e6fc7d4e4d039f3221fbd3a7e2377fd3fd9be44ac0295b193e923502fd3d47"
    "pl"
  end
  language "pt-BR" do
    sha256 "64b0316f5dd0d485e3289b2067c1e6118ff4e8341139918ab1c0aad945889386"
    "pt-BR"
  end
  language "pt" do
    sha256 "6ec3dd4503b7c7d316dde09a457e4c146d146f6f8fdb25bb0a00a36080ae5b79"
    "pt-PT"
  end
  language "ru" do
    sha256 "f2b7b9a070c279da63e2dd00f13f4e2a0eb391f5c3ee83a1b8e45f494baaf14e"
    "ru"
  end
  language "uk" do
    sha256 "340a6778824f2b196630902d4835ffa12a7d72e8a9c4337755f2180ee042896d"
    "uk"
  end
  language "zh-TW" do
    sha256 "697aba0ce0f6eba9e99963524d02ef382857a0702fc974d6571372b8b3affdd9"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7eeeddae101083975e4ab2d20e1b34be0e7198f2626b8ca0af499dee1627fe2"
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
