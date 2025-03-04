cask "firefox@beta" do
  version "137.0b1"

  language "cs" do
    sha256 "a3a5052ade6fc70955d060036b7e154a0cc9342d01acdae420b00478fcbda463"
    "cs"
  end
  language "de" do
    sha256 "88bfb8bba2d009bd5374d82c89dffb1b56ec3356ddb0ece49ad875c6fedc663d"
    "de"
  end
  language "en-CA" do
    sha256 "38448c10768763300b71d6b99f75edae34129a1c6e33b32bcf7cc6589bd6d8e2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "27ce0e2d45e4bbfecb5dd1b9c75e6e8e245286dd9579f568e4ffbded50b1041a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6ff3f376bc25e8890ed34278fe5c0719349839a45c5ac340118ff983f3741a5"
    "en-US"
  end
  language "es-AR" do
    sha256 "bc88e1002d839df4ca33327b78f4d96e0ca7433ba0090c99cbc5630380530dc8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3535f47ea2e9aa5f554e9ea247da7ab59d2f463fd0daa9ffc1369f02af64a076"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3e4afae49eb92f544baf91d6ab5feb32818f249a1a0536931ae8bfd8091c4d81"
    "es-ES"
  end
  language "fi" do
    sha256 "98dc542217bf3c5a42aeafc48357b761831bf32349798c616c6b250d9f1ced4f"
    "fi"
  end
  language "fr" do
    sha256 "4d9d78bae4b19336e11b7505b25f232c2dcc73c7fa1a1ac7ec52c014b4b41417"
    "fr"
  end
  language "gl" do
    sha256 "285e5bf7cb0ad060fd446862b1835e5f4ff296862d635aa42d36672191c6ea92"
    "gl"
  end
  language "in" do
    sha256 "507d7a2fccbde0b6da14f91836d94a2d94da3bf4053095e95d6c1c2b389c6829"
    "hi-IN"
  end
  language "it" do
    sha256 "692f87055048e9e63b7f6667d90bce704a22ddc2f2d6cb5303ad4c725c743e51"
    "it"
  end
  language "ja" do
    sha256 "48f5eda5a1a1d4a59c1721f6baca609a6158a91225cfe2e354c87236ca287bd4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "982c14ddab01ec940ea66723feb1840256a5f1178fead31e563f6765e0382577"
    "nl"
  end
  language "pl" do
    sha256 "45c15cc6f2c97ac86d8c4b3e242181f6678a47cc8fb90db75f39583886b966c7"
    "pl"
  end
  language "pt-BR" do
    sha256 "2df2d9b11044faab72e2db8c47d2493360d4efd0b69df45cadeac8ae42b88d50"
    "pt-BR"
  end
  language "pt" do
    sha256 "302924d846eccca3303b9677a91e7be899f0b8b0ffd619dee12a7c0f243bc96e"
    "pt-PT"
  end
  language "ru" do
    sha256 "f270252bafee95f3427878664b81c3aa959f28308bef50dc25f6c63be1a8d32a"
    "ru"
  end
  language "uk" do
    sha256 "2f9f7c11fe64e511de66c92c40dfeebdc575cdb075a6ddcf0f0c82bde6696282"
    "uk"
  end
  language "zh-TW" do
    sha256 "5facde13b9a6bd4f6a6e65c9d015d77715a6b8beb6b315841c0547ca4a911299"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a14a0cfeeb6436ec5fd4ac2168fe2ac98bd72fe811ad98ac0abc3537aad15b7"
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
