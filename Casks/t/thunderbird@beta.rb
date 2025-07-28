cask "thunderbird@beta" do
  version "142.0b1"

  language "cs" do
    sha256 "35ec9dcd8a1c3c5309cb838ee8000543c87eb0d428eea57ee4e8b0cadddb70c7"
    "cs"
  end
  language "de" do
    sha256 "c9eef3aefae3d836e4e196bb13b0380f1140f89440b4aaf0f4a7d971f73762e3"
    "de"
  end
  language "en-GB" do
    sha256 "1f070f52c1c5abd29f412e3a58e8cdfde74da03c3ad05640983ea54338e0d27c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "45ac86de1782058474be12742d3bf1832c487dbf6eed69d81679acd82210e594"
    "en-US"
  end
  language "fr" do
    sha256 "681ff7c9c94377fbf3e64095c4363099ad1239b6af7fde2a5d6474fd615bc31e"
    "fr"
  end
  language "gl" do
    sha256 "37886fc0be7ab3eddeaefe2ee1deca58d34d715f7100729558b7e689b5349b78"
    "gl"
  end
  language "it" do
    sha256 "3f3da831499eba988ae2cc039505803efabd6eaa005371dbc0ec58969b71c737"
    "it"
  end
  language "ja" do
    sha256 "82ae7dbad1c9f57c456a8a496d1d5c40ba2fd935c9d50ac1747f695793b12792"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "614c56c5108f149d5901f90136ed06d149704df0e991427bc18c7addbd1bc837"
    "nl"
  end
  language "pl" do
    sha256 "e6545d3a8d3a7f10c20ec10b00d82f61d7f8cee5d25b670db68aa799c3c7675f"
    "pl"
  end
  language "pt" do
    sha256 "8d0fc41bcd2bd78798340c45e1218c00afd60c6b474cf6777c4e51db2d1f9fde"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9cca245bd961143f93779a71e85942e32be2bcf4354360c7d57062bda9f7e66e"
    "pt-BR"
  end
  language "ru" do
    sha256 "1dfbd992026adc37d591f3d2969bd5b6e1607cfa7ce5aa7154ad8866595cf3b2"
    "ru"
  end
  language "uk" do
    sha256 "746f26ca8b5457a02a7eb00f349fb51e920c12bf5df8f99e61b97d3b328900c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ae7468cb491e157e5592706757caba38b18ded0ea010052d206ca622ea1c333"
    "zh-TW"
  end
  language "zh" do
    sha256 "34ed847212e6fd67598af5ff82ca6203a0c2bcd0502c6c3889c82cdf704c3259"
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
