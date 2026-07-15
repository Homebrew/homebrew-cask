cask "thunderbird@beta" do
  version "153.0b9"

  language "cs" do
    sha256 "ae4dafded3641dddcce71b77c61c0262eab2db814bd18806a897087cea81579b"
    "cs"
  end
  language "de" do
    sha256 "e22819503f029a000f9f6020703a0ec258dba6a6e2a522391a32bada9e6b69cc"
    "de"
  end
  language "en-GB" do
    sha256 "51806c81bbe325fb251697462a735860874aad9beba2ade60f728bd27f74629b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d3b6187b23c7677da7a8060a8de3250153a8169ae94bd0736d6bec4b88b6f55e"
    "en-US"
  end
  language "fr" do
    sha256 "1a9f2d86e77c3b3c6f4ad03a3cec464dbaa7cfb0688b257b4fd574b773a1c353"
    "fr"
  end
  language "gl" do
    sha256 "9c645fcb938123927bb3e991f3b92abe38a31f583aac59cf18d852f420286c75"
    "gl"
  end
  language "it" do
    sha256 "f833487526520cc9b03f8cae48b6c5546cae6b35f74a68044b0e6a1177099792"
    "it"
  end
  language "ja" do
    sha256 "eb55762cef6192a378c8b1c425b24e42935f0ee359cea51a1cf7bfdcf81c0731"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "28c250338b1083c42985ad3a8dbdca72189f49267e65c0bc0e3b3dbd5223ef38"
    "nl"
  end
  language "pl" do
    sha256 "f4da3e1264b9bbb3dc5a3a176eb0cfc8a3cb317e714e6da9ae7119e658fc0e83"
    "pl"
  end
  language "pt" do
    sha256 "1c646d39384c82a2ce0265a24e0f676af75ee192a2abfd4cf8cd4ebfe184a4c7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a243dd0f113d9f64b71e2892b97b86a47b30a435108d022a5867412d13fd98c0"
    "pt-BR"
  end
  language "ru" do
    sha256 "54cc17a45ace3b1bfd737432945e0f964e7b1fd172ba391955fb52dbbf59c2a3"
    "ru"
  end
  language "uk" do
    sha256 "8168fdeef03c8bacfbc80aaee5f955e2a9ff26b815c01984fc2aa749ea59a3fc"
    "uk"
  end
  language "zh-TW" do
    sha256 "953542ec9fca8e9ccbb270a766e595ee03883af25dcf8347a90ff6cc79dd8d51"
    "zh-TW"
  end
  language "zh" do
    sha256 "2df113781f92b4eb97cf0be8a2e27dc5bf7310c5df25d4d45719d7ff06499c37"
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
  depends_on :macos

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
