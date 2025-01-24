cask "thunderbird@beta" do
  version "135.0b3"

  language "cs" do
    sha256 "bf45ff9dd22a5fc152788cefbea3f5994e8d90c51eb55dbe15c90c69d6fdf85f"
    "cs"
  end
  language "de" do
    sha256 "01ee1b2faa61ed9cb598113e3c4bef374cd76241b6134cdec8f851ecae9d9548"
    "de"
  end
  language "en-GB" do
    sha256 "d05b641717215a8ba43e0838c685ead45bf6929404e6d922fde1323ecba6215e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "384b1acfa2437406954182c00d6f6003dad503326809e138bedc0c4f627fe424"
    "en-US"
  end
  language "fr" do
    sha256 "4e9f31070be30f363376c757ac534499e20e57bf4b4486f4ac57116231f9b2ce"
    "fr"
  end
  language "gl" do
    sha256 "94796100194cece05760f4a3f17225eb4c0341742449d1451255fc5852dc76bf"
    "gl"
  end
  language "it" do
    sha256 "0af8e42cf28442de265f478515fa6f0bbbd6b250bf93904d0d37b376be8c36b9"
    "it"
  end
  language "ja" do
    sha256 "8cfdecb1bb07251f74973ac5f7cc5b28d48372dc6d3ad4cf89f339395cf96add"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "78c8295fb9547f38146783c1c6ed4c36b0417d5fc10823bc92d2b777c2f11d3b"
    "nl"
  end
  language "pl" do
    sha256 "d03956bd87a44ebc88b5164b422a9f1fb44fbc48e69985756a0d94aa740b3d7a"
    "pl"
  end
  language "pt" do
    sha256 "43b867c22a3760ca93c26dbb30bd973fb59972f51e2523c27795d3d434c696cb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0896546a2424bb7c1bf9c9f0ac5f898ade89409433d6be0d01c1d156cd65627f"
    "pt-BR"
  end
  language "ru" do
    sha256 "79441b83bddf124399a8bc071a54506d85724f487e006b5e9abe813b138c26de"
    "ru"
  end
  language "uk" do
    sha256 "a1501aa46a222c573d983b3cd283a3354f123209557dcc868a8cad7219d57746"
    "uk"
  end
  language "zh-TW" do
    sha256 "27d7604bd9e892ca0fac76d87af8d9ae2a869de629a53195828de6db18d1c17b"
    "zh-TW"
  end
  language "zh" do
    sha256 "1d50071371f72f36238a8b81062152efbabc75b0c6b1645bcb51dfdd6c007c45"
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
