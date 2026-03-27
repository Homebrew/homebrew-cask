cask "thunderbird@daily" do
  version "151.0a1,2026-03-27-09-52-20"

  language "cs" do
    sha256 "3bf17b3ac33d269e3803427e9732f396dca57cc0ce4fadd337e0b91afdc9dcf0"
    "cs"
  end
  language "de" do
    sha256 "65677d230e3f7a4795858cee874401e562e3bb00c472c829092c20af02be359a"
    "de"
  end
  language "en-GB" do
    sha256 "a045bfd54c06e447613e6ecdf84f8b0b39f0f85cd99a35980d6c21c4ca34ef07"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a07cae5f4a65ba5ad75e5e8c1bc88fe1994b2a4643be8029f69051dc51149e00"
    "en-US"
  end
  language "fr" do
    sha256 "e5e802e605a4ea2e0cae783f9eb750fcaf841989961539aa2dfbbedd214fb580"
    "fr"
  end
  language "gl" do
    sha256 "ee8f2ed14c10cfecf5138f5d2209e470eb534d24aef51ab029003d8d27580ec8"
    "gl"
  end
  language "it" do
    sha256 "e7bb55310d74a86ae804415d632286241c6960b20b8239da80636ee120d494ce"
    "it"
  end
  language "ja" do
    sha256 "06bdbfc5488bc024cf494203caa137ad2c377e8415f1ac61d31248582e0ee7d1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "173aec959d57ae72ed99ea9a9e9a618acf0ecd931c6803a113ad969b9262901e"
    "nl"
  end
  language "pl" do
    sha256 "f2854c7006e75ca1772ba03f5bfa6bb6eab944bb9fb09a24c69f5a2fdc5113ec"
    "pl"
  end
  language "pt" do
    sha256 "dca9ac12c1d715ea33a1f70f6f062247b5fe7bdfa1fa841c7f44c38ae8ceb4f9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "384813c03e719c54590d7a4fde82a1d49df6b22294b4f9cc418f329ef6103b98"
    "pt-BR"
  end
  language "ru" do
    sha256 "c9f44308aeed5691b8682c1982cd083b59f53a0a0d3e8e875a411bf85e7f39de"
    "ru"
  end
  language "uk" do
    sha256 "401f2ca740a7c9cb80eea83fded170f59538d7ed5bd59e4de19beee12f265a70"
    "uk"
  end
  language "zh-TW" do
    sha256 "feba0343ee40d4c53a331865f1a73df36a7b35783e5d45f4214090483ffb6112"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d717d998f9e511cc7fbb031be7d0dce3c6dbce7466910cffbe99ec202efeaa9"
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
