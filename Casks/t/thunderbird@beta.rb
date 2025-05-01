cask "thunderbird@beta" do
  version "139.0b1"

  language "cs" do
    sha256 "0abd5c126657d18ca0c7220c8a322cd9297c0fce7854aabff58b7536553d21ef"
    "cs"
  end
  language "de" do
    sha256 "a6e352099649f0c92bffda29cac6bab957b05bd0a423d32afb6e8915d8429263"
    "de"
  end
  language "en-GB" do
    sha256 "ffd76be5fa4c68e1df33b025029ba35b9a7ce1a497f166e3b5197334a2fece56"
    "en-GB"
  end
  language "en", default: true do
    sha256 "57536d4bc4101381378ea66cae4c9909cbe2a27326415fa6b049966420587abc"
    "en-US"
  end
  language "fr" do
    sha256 "612f08febf26391368f24373727a4a737961f1c0462b0307fcf3d32b3a0f92c8"
    "fr"
  end
  language "gl" do
    sha256 "4de33341d217e3f353cfa7614f4f22b7c7134737f73b5583cbddce3fa7d57f47"
    "gl"
  end
  language "it" do
    sha256 "8074cc0af919c35709b7a3b4bb9da04d279b10786a8e33b35284082cd94ae895"
    "it"
  end
  language "ja" do
    sha256 "e28012791bb38773bb3b6c3be8816316c3a42cb233fec95217414f356b4e3c7c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "591712423b3d3cbbdf2c57e1f1525ffc758717717467935776029531020cc916"
    "nl"
  end
  language "pl" do
    sha256 "c46fe341de8a0aae0e8a13ca63632c4e26abce80085039ea25088647402892ef"
    "pl"
  end
  language "pt" do
    sha256 "8c5862c276173dc208ab8c901f1ad924f1c0b7e2b413f9eaee89f2cfab14edbb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b958ccbc0bad71e7513c2fbde937bc233de7c0b643f4cc39add35f301f2e6a73"
    "pt-BR"
  end
  language "ru" do
    sha256 "9508548908f043016c15c6a5bce7fe38db1c955f6cb08ed2aeacac3b5f914f77"
    "ru"
  end
  language "uk" do
    sha256 "9a40115629054440fb9ad9dcd2db81ae00a3abd01c5504e09fff34d371979015"
    "uk"
  end
  language "zh-TW" do
    sha256 "dc6592c61a4accb9a3749cb09169d600e58d18dd838cf980ffa031ea20532cd5"
    "zh-TW"
  end
  language "zh" do
    sha256 "1906042af432367ce045a0b508c389961a700ef38c62b49b951c693c9fcb199b"
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
