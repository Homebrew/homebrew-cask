cask "thunderbird" do
  version "115.1.1"

  language "cs" do
    sha256 "5138bae551909173ba8675b565b56a3005f78795eb65f6a86881f9093ebc9311"
    "cs"
  end
  language "de" do
    sha256 "bc4b1e81ceae9e7ca56b4e44eea40e4c4a0f688763c9ed517593e5a3e89fd8cd"
    "de"
  end
  language "en-GB" do
    sha256 "8ed4b5bd05d6ffe40958d2ff3eecc6c56ae90141fd7326c8dc76ab72cf60dcbb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c38086896b8d2f91cc42b102049f007aa81701d9da74506bfc0bf1fd8479dd42"
    "en-US"
  end
  language "fr" do
    sha256 "107af0bd291f119a814da24f2ba00117f7e0177091bf3a09adddb7ecfec27c95"
    "fr"
  end
  language "gl" do
    sha256 "161523372a76e5c583e5eda7d9f06f84b5191eddaf209daea3d1368bc3b67768"
    "gl"
  end
  language "it" do
    sha256 "c33ae75ffee7ee5a250c191db5203b559349ba735bfad9fb83fc178d04012414"
    "it"
  end
  language "ja" do
    sha256 "08465178f51f9ec4fe8695e3cbe1099a2a648a5b8cb427b3774705833b53c7df"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4398dd4cd6130368a917a12592b236fd35f70128338a10c82c6b57fc0ca703f2"
    "nl"
  end
  language "pl" do
    sha256 "1096b085ade3c79fcbf2212738c25fec94fa077c0ab528cb9f6ce4a62618ad6d"
    "pl"
  end
  language "pt" do
    sha256 "2c1d6f0d0c581414b2c72af9d665c0d7b4397219ce823accab54dafa2ae8fa92"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b18546728ffc074973bbf776d928900fc4a46babc4302f85a8966c35684ae47f"
    "pt-BR"
  end
  language "ru" do
    sha256 "6e4ba9edc18387c5ce1939d6fa2834ad7340f8481b318333ad8f48b34aef7c23"
    "ru"
  end
  language "uk" do
    sha256 "ddd7de307e90a71dd4a97f9599a14454ff7226da3c16f3a57e9d7289c98eef2c"
    "uk"
  end
  language "zh-TW" do
    sha256 "9e7ea623ba4d4180e00efddd54d165f22f7d6d6d627949a24bab4c24be28c496"
    "zh-TW"
  end
  language "zh" do
    sha256 "12bcb17b7e99ae2194ba31d23fef9fc081a93731fb7d05d1db4d3078a0d3c921"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
