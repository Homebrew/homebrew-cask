cask "thunderbird@beta" do
  version "146.0b3"

  language "cs" do
    sha256 "fc06b090aaaea210aedda7917e69ba172ca64a867764b466f633a84c05214e57"
    "cs"
  end
  language "de" do
    sha256 "704cf109986c167cd9d416456b841a69c6530b8c1377b712ff6b023b9dd0b8d9"
    "de"
  end
  language "en-GB" do
    sha256 "ccab6f5ddefc18fdb741f6e9c836d2f5598c1fc468c1dab220218b58010d637a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d7db3025a426938f4475e785f9566bdaf1c97ada66ed81d62730b4d61323e368"
    "en-US"
  end
  language "fr" do
    sha256 "8c0917410efa91fa6351735ebabd4eb05802642702aacf1e9b60b3530f76dbf4"
    "fr"
  end
  language "gl" do
    sha256 "d7067c9c43f14fc458ae6bd2dc4f26beeec17cce841264d653d92cbd971201bf"
    "gl"
  end
  language "it" do
    sha256 "554ac0ef920ea9ee64de7c8c223e38508c989dd76efaf23d26274ca809d4b092"
    "it"
  end
  language "ja" do
    sha256 "d16983fb93c2f405871825fa79d2d5dc3a263da6c74c0881b65b79f18998bec6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ea9b640301603517daa9b9431af4e88899acfc66d93d1260778f9ac94eabd8ac"
    "nl"
  end
  language "pl" do
    sha256 "bb1c0af3a0eb1f1b4b63f34a75572efcbc2a2e257a19ad71e1aca8327b9d1324"
    "pl"
  end
  language "pt" do
    sha256 "9d8280a656812855aa94be5e3a671d73e512058f0ad0e96b9fbdd68965bbf943"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "efb805dc1c014cfbb9030aa011a27387408fb82ec256d47d69e12ada5ff84ce1"
    "pt-BR"
  end
  language "ru" do
    sha256 "26fc66ffefbdfb74b5e64224636bcc51c2df0181ea9f1018138ec75db8669048"
    "ru"
  end
  language "uk" do
    sha256 "cf0f826b49335dee382b7ee77f0a2723b81f375fdeb8d93f3577fd45e6d7cf09"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d281a8c1488b21544659bc80183b244e797f8459b8669fd9bce2c065c52f0ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "e981af094736333982fefd97e94e92f91873ce4dd20cee0e67fa957c3fd48215"
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
