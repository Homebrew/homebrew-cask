cask "thunderbird@beta" do
  version "162.0b1"

  language "cs" do
    sha256 "56646d8b8f15d62358af6b880d49110061b7886a8bd8fc2f7b7896f5b383ab65"
    "cs"
  end
  language "de" do
    sha256 "b3aaed6892db0827c57804bfb3d42321426079025846c6f043f3f5b67015aed8"
    "de"
  end
  language "en-GB" do
    sha256 "3631ba1e38da126f6efa47b4630b4337001d6f02a2d57369f66b32d329560d46"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4627dd7cf2f5c7468a703cddbf293dc046e3534c0d30b7dd9b860158446576f6"
    "en-US"
  end
  language "fr" do
    sha256 "1a1073ad6d15398b6f4db6c319554dfb1d35ad9b396a62cf63e430516ffaf66d"
    "fr"
  end
  language "gl" do
    sha256 "af959c33fb08e895d49fe205a66ea77dab78d7e45c67132cd0dfb158da1e3394"
    "gl"
  end
  language "it" do
    sha256 "8ea814d48297b8c05eadbebf974470ff0ffff85509d9aed780872748c771d789"
    "it"
  end
  language "ja" do
    sha256 "f23008b962d5fe13f221ccbec6623e6343376d557bc5ef8ee020640eb3d90c36"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9733da4a852e3f860d3996ef21d6a23480bafbe8f0f7f8be0afca1157fc2888b"
    "nl"
  end
  language "pl" do
    sha256 "7b51c330502672b9c881b020c72fbda25a0ffec408a01ecc8f68251673d7762b"
    "pl"
  end
  language "pt" do
    sha256 "dd2f57786029a31ec4d9849717df32af4d1c56b55ffd8c80d267cc7bc7756759"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "584f9b1d7b276ca4f9c2f688da13f26ed30faddc6c38de666402cd222923c014"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd54e8d8b333e45314b8035c10755886bf2cd17b160d9da688e49257eb43effd"
    "ru"
  end
  language "uk" do
    sha256 "d859f0d05512f34f561d09d5e03761b3bc61d4f4fab27d441be321d4a829b27d"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d497274a792d41d065bd00948df9bbcef2abe7cf8a0d4eaaede3632546f8b95"
    "zh-TW"
  end
  language "zh" do
    sha256 "aee3a88c0e960a01c49828e9be0a98d0692b99eb783f0ac77c066c99e03f5278"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
