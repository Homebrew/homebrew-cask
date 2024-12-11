cask "thunderbird@beta" do
  version "134.0b4"

  language "cs" do
    sha256 "a6ae4fcc203d892fff4279b86e2ce31cab770829d720d19fd57a45a143dec1e1"
    "cs"
  end
  language "de" do
    sha256 "db00ec1f33ef5a419f43d548116cbaad55666e875f180397f53b563a65663408"
    "de"
  end
  language "en-GB" do
    sha256 "2602656c36e79dca127225b80ca26d591a4b5b53addf327b54a593140e168006"
    "en-GB"
  end
  language "en", default: true do
    sha256 "145a9471da04e09390b4ecee1f9838e2d2828a8cc7ade34113fc113cf18870dc"
    "en-US"
  end
  language "fr" do
    sha256 "5faddf3cfec13d8cef3f56f6f6f35df2607826551b3cd28831c8e43fcd868be5"
    "fr"
  end
  language "gl" do
    sha256 "c81b5c49ce8c042fc6e7344b804d4e590a0f722b745161e590da2239c9f80ccc"
    "gl"
  end
  language "it" do
    sha256 "ed94003f38324e0b937a38efc3a37d81b035a88470f4f2d6235703cb1584bb09"
    "it"
  end
  language "ja" do
    sha256 "3b039c01fb0292dbe44227bd3bb11a9a76a753abd1f6163f67e8d072c449a567"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "960a0ccaad6631a86ee362b077dc9bc0856f0aef6799024bc3f3e77d25d1b274"
    "nl"
  end
  language "pl" do
    sha256 "57998f1bce0d6e342f88d4b42e80c6168f03daacb64ae224c67ce3c3662598ec"
    "pl"
  end
  language "pt" do
    sha256 "a184c2d46565c90a64b91dc1502fa4b66100b122c65c41a81bd661db152a78f5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0ca4ba7d551067c89c68c81d117225bb090f399c6e17e5a0c0b92674cc6a28b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "867647634fa7f565da59a76c2eea2d845bcbad99cbcdc97717e34910a1861fd8"
    "ru"
  end
  language "uk" do
    sha256 "f83eeaf329940de139ae1e775b392f52e651060f5abe813c681a690c1c0e88da"
    "uk"
  end
  language "zh-TW" do
    sha256 "806c0294bc753a3d8881a2f1d16b26e10a055898d21b6330266e75fc9643026a"
    "zh-TW"
  end
  language "zh" do
    sha256 "a0349b607315840466885db580b2f583dc8e2174da45d8d6ef47f6da04043018"
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
