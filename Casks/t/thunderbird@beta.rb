cask "thunderbird@beta" do
  version "133.0b2"

  language "cs" do
    sha256 "b5825923d0994be548b3264324dd67aac02a0ff3930b1dcdf90ef3c493397587"
    "cs"
  end
  language "de" do
    sha256 "6b298731161279c0ecfa524377b0a50f4f922d5fcd8eaac15f5f2581e9ee91ea"
    "de"
  end
  language "en-GB" do
    sha256 "cebbb643d08ca0f4e845dffbc6ba03c1410cbde5f733647f70b28216291bf89a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "10371db5ff05afdb20ca846617b5edd02dc226e414492bbc29faa1af09fb8d55"
    "en-US"
  end
  language "fr" do
    sha256 "50d0d6a15cb2741f0337e946cdd7d06f439b8a24f73e9d11295b45b3706e2d7b"
    "fr"
  end
  language "gl" do
    sha256 "11fccfabf5d8670fd9ddaf7e55ebf755f138ded5f4c8517e4ef4e65569809d72"
    "gl"
  end
  language "it" do
    sha256 "37c82d8cf4de1a9a9dabe18eafee63e2827dd6fb816634fd023cedd57b8bfa53"
    "it"
  end
  language "ja" do
    sha256 "0e2873aa309cdf3696639476d5fab68e1b68c60c106098f7784b99baf17a76e9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "47eb77a796dc6304de0fc69ccc9bb2db5539fa1d50e03442addba78aefd8dfd8"
    "nl"
  end
  language "pl" do
    sha256 "da0077aa07df09e2d55b91df11547996cd7e9d2cc516d7c911c261ea26fd95c9"
    "pl"
  end
  language "pt" do
    sha256 "2c769f0093785c0e79d9f06fd9c14d62d63daeb210ddf1fd56af03c531112944"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e79f8cf96f676a6f849439e23dd2c011418f13204e9e674138dd97df32d11446"
    "pt-BR"
  end
  language "ru" do
    sha256 "f3825b921deeb65a0376cac9a3210190e92ff817ce5054f3b9893020a95581e6"
    "ru"
  end
  language "uk" do
    sha256 "3757d0fc3656627b877499ae271ecbcb28a524b8f76450343e01a96109ecceab"
    "uk"
  end
  language "zh-TW" do
    sha256 "96799e7e28dcf37ae45a30df259e8c11c420db5323bc1f119085100455e90706"
    "zh-TW"
  end
  language "zh" do
    sha256 "82d0d453a33df15b68c8d9d58c613dc7d3a49eff76fed0ac20d5b6e27d1ba4d1"
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
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
