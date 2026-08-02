cask "thunderbird@daily" do
  version "155.0a1,2026-08-02-09-57-56"

  language "cs" do
    sha256 "a2a30409ce6405ad73898258842edb935a3518611a828d6ef3a021425b990eb1"
    "cs"
  end
  language "de" do
    sha256 "202e2ed142c51565e41a0957fc875a43e664647ca9b10a111bbffd9c5af6bb89"
    "de"
  end
  language "en-GB" do
    sha256 "19bc7856fb4eb92c73fc9c8dd2f56da181e2f36a0ee13d17c7807bab95fa96ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3a2be3f485b3adad39d289b9ddf3b1190f39cd877e7738411d716066a6a8f5b5"
    "en-US"
  end
  language "fr" do
    sha256 "184f02f7d50e2487172e956352ecc232456209538c48f14548d44922fb14f76f"
    "fr"
  end
  language "gl" do
    sha256 "ad0781f2727f77a1103344aa396866f33fddb507e355bd92e87957264fe0243f"
    "gl"
  end
  language "it" do
    sha256 "277d90413f22aff72fc74cb6d5d965f8a45e2d343e0872af19ce93d05f3e55ea"
    "it"
  end
  language "ja" do
    sha256 "26c7fa8578bde2ffea55da676de3edf1bface29f680fcbd3a6a1a3cb08c57e58"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bb45195e450e9abba66ed9358f4ad427fd736a63ebaecb4019bdcfd581de5be3"
    "nl"
  end
  language "pl" do
    sha256 "072bf6110a675d8232022154957fb90fc0c9814f81441d9f2328990746a4faf0"
    "pl"
  end
  language "pt" do
    sha256 "af49c2bee82509154365038285a7d7bd32e1f2264d8ea096c3dae9c9f13c8dd8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ad359a381c026af3d56b9857eafeb57bfb82b15f23b0c50d6a9fb19f8e233d61"
    "pt-BR"
  end
  language "ru" do
    sha256 "792f7ad128d2affc79e16fe1188eab561d9b0949afb55267a7a970b9570ec096"
    "ru"
  end
  language "uk" do
    sha256 "946df21979bfedba54daab34967d4cc27ff7f043980c696be5ff0f7c4b65c2cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "daa2b73913e4f5ac943c2885bf9308d62d23c3d99d117250397b8e8566246bc2"
    "zh-TW"
  end
  language "zh" do
    sha256 "31f76efa241b2ba930bfae4a1a03bb66825b64eda58e74060987c60bf11570d3"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

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
