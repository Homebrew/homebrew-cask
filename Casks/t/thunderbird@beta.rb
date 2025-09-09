cask "thunderbird@beta" do
  version "143.0b4"

  language "cs" do
    sha256 "5f4490f456f1850a298443f23343df250735569a6df95c012c711636f63f771b"
    "cs"
  end
  language "de" do
    sha256 "26684f267f101f5378277751c724d7150920dfe18eb36a891fd4a5d8e0da081d"
    "de"
  end
  language "en-GB" do
    sha256 "78c0a76c1c1c1862f9bd951582a742ec5408e16bac67730d4b99c854ff2e4265"
    "en-GB"
  end
  language "en", default: true do
    sha256 "90ff7ee135e612f8ce4704bec110b123deece073076794557f4c0953af8517b1"
    "en-US"
  end
  language "fr" do
    sha256 "751a25f1959dfa57f7ea5a8a51e7cb437716fcf73eee1db3c5b5bf094cd8bb7a"
    "fr"
  end
  language "gl" do
    sha256 "6cf45ed8d503d71de9d302c3f2fe5c0211be24e85136a9d823ae145897fdc6db"
    "gl"
  end
  language "it" do
    sha256 "1d8f07fb626166a6b99883124aaeeae5c56cb8a09a2b5401ebcb2486c1eb13c5"
    "it"
  end
  language "ja" do
    sha256 "a88319d14aaf14cd44cfeb6d88b1413a5f469e2035787d8549a774dfb46c0ca4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c7c1c05fdcb01830a5299a6e2018e8c43c3175de6cb92e0eea30b462ca694edc"
    "nl"
  end
  language "pl" do
    sha256 "bc19b3b802a9e690d3d883e05fa1f78ce9670de26fa592480944bb234b4597e1"
    "pl"
  end
  language "pt" do
    sha256 "d4d23665e38accc3001ff94c229dbae7cf36bfba9db9bcfa9068709b77daa25a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "af33249d279b77e4ed432161d98b0814ca00c4d9f57e5fe9129c0f5a1ade9b7f"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b7b2259a7505a0bb2bc25ad609040609bdba7f236c67b548de4865de0db994b"
    "ru"
  end
  language "uk" do
    sha256 "745274b3fa4d9dfa8f89ce78215434885d4709c0a35018007e5e09ea679326e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "15d03a554bec8aba64dfa2c2210dbe71b2f00779ee3c5d5a0675b23f24bc9551"
    "zh-TW"
  end
  language "zh" do
    sha256 "c88029bdaf18f46c245f8c89acb1af40fa2c726721e32f972bfef598b0a18f33"
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
