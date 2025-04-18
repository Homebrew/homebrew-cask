cask "firefox@beta" do
  version "138.0b9"

  language "cs" do
    sha256 "d3af14d3117c290ec3f778beb8646d637776efb5d2a549411caf2576ad66d80c"
    "cs"
  end
  language "de" do
    sha256 "9b37b1b597dfa7950b5570c3d91cbef38a98b4037d85cff70a81e1575da583c0"
    "de"
  end
  language "en-CA" do
    sha256 "b76456d751c540bad476f4f327e8f90479ea8181bc7e0b2a8169b1522b59c2cb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "95f59434f43990b0095d74ccbdd914477fdad55cc3ffb1665cf5a241032c1219"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e1749becc9427c908865af93cf245fc82895236eb8ad160798342a9d6714dde"
    "en-US"
  end
  language "es-AR" do
    sha256 "ae855d0b172a3f7605d139d768127bd3af32bcbac8daa2e562095cc29254ce5c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a3769be026b0bde428d19f1eaee83954ec8e7847704dda90dca6cdd7f9465fb2"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b76fa9230af9d17a267a318bec1e00996019f50018feb5016ce363af8ba8ce2f"
    "es-ES"
  end
  language "fi" do
    sha256 "c39f69bd36ec4866502edfb7b82c65fccf961c264f869e481f97c0a0866d47dc"
    "fi"
  end
  language "fr" do
    sha256 "47bb44aac78077e8f21b8068151b7490535be66e50a8f900a14a88250ed9de2b"
    "fr"
  end
  language "gl" do
    sha256 "ea7f5e485b8254daeb2712877bd7fc44328e78095febae1dbc2a1023bed14ff2"
    "gl"
  end
  language "in" do
    sha256 "3e8a34e66245e9fee6bba2c74a92a4bf43938d2f8f85d988def896fb2b4e5d44"
    "hi-IN"
  end
  language "it" do
    sha256 "91014d8e78fba73483f827e4c94d12eb9b6dee60b551f1c5ae675e79e881f6b9"
    "it"
  end
  language "ja" do
    sha256 "4e6e0a5b23736d505cff12c0cf153f8776427c09d4b62b83e3990b0a37865854"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b5ea1492bdde9f331941e3a144c0cf39dd9f6d1ad0b14c665fbc16ee5bcbbad9"
    "nl"
  end
  language "pl" do
    sha256 "7a103ffd83a1fc9c90557763788da0f2f685880cfdc484cfeca8c03d99c9ec13"
    "pl"
  end
  language "pt-BR" do
    sha256 "5d712dc61dc863f6d258664eee0eea47a2b98d01673b5a8f23314fc144eb96c5"
    "pt-BR"
  end
  language "pt" do
    sha256 "117a6ccedfb44aee39e1b33d67918850beb248941133b946b1ba2eb3937ce65c"
    "pt-PT"
  end
  language "ru" do
    sha256 "f4a9f43946d0080def586c05d6dae8d99ca254564b25c98b589f2ada28179541"
    "ru"
  end
  language "uk" do
    sha256 "9e576005d0681428663e83a98ad6183297018d23b9828523fc3f5d6c27871376"
    "uk"
  end
  language "zh-TW" do
    sha256 "231cd243c38f4cc8e0da4c3f47a7e3729832bae411c81640af2117a68a2cc0b4"
    "zh-TW"
  end
  language "zh" do
    sha256 "d8c2531a5da4c7a53847b741115dc97db3555e8d1cf366ee11647aeec0afcd73"
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
