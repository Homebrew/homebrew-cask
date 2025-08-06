cask "seamonkey" do
  version "2.53.21"

  language "cs" do
    sha256 "f4fc16dacb67eb0e0eefc1860804ec2681b1234d260ae7f43e051f0f6b614df0"
    "cs"
  end
  language "de" do
    sha256 "d9f05f4ff3e07004310dff9f4875eddf40ae7d2c2a0d7af24775d8389ecf3b7a"
    "de"
  end
  language "el" do
    sha256 "cf9eda041afdc16fe87e54e2e70b54e5cdb16f1b2d492a10b5a59d14f8619ae4"
    "el"
  end
  language "en-GB" do
    sha256 "03a56c7cbe95302e2e09b505f4d8e845d62b13674aeaed9d13a60a3623318ca9"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "a56bdb83a28cf73966247dafca3291cf15eb25a010ade99c4a27776d04acfc48"
    "en-US"
  end
  language "es-AR" do
    sha256 "77dde467a022c0d302901833d7626e904c06ddfa2935111a14104baa54f54249"
    "es-AR"
  end
  language "es-ES" do
    sha256 "19d88c93fd62962198806524ccb0c5ff626e80fcce7888d0f5b9b5301316c01d"
    "es-ES"
  end
  language "fi" do
    sha256 "5f0bdd95444839a0e80a6e549629168cbb03525b113011f98409800a617b8695"
    "fi"
  end
  language "fr" do
    sha256 "0304b0cb8499c8e1445f7f165826faea7a6d7062942b5a93f50316ff460b1aa0"
    "fr"
  end
  language "hu" do
    sha256 "f0b0189990fe74182a679a29378f3a8e695d92bce5d80fe2f8a49e55484f932e"
    "hu"
  end
  language "it" do
    sha256 "bd7bd54f5968bdf3918d3b04e9b9c0b1b1dd1e1c9e52a527bc6dea9cbc834a60"
    "it"
  end
  language "ja" do
    sha256 "e8ecafcfcb09203b0c8145e517e011730c72804a7c6b6bae58663d95dff3cb66"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "9530ee1161fbcc2a27c6c209dd36c55610aba4324c5db79281e31c83ead06a05"
    "ka"
  end
  language "nl" do
    sha256 "59f9e2c4f5fbaac391bbd92b65246afe65973144c31d37b3f7179ecb24c96c34"
    "nl"
  end
  language "no" do
    sha256 "748476eb96385ad4df52502fa2057feae938044de0839cbb001424ef51f3b0f6"
    "nb-NO"
  end
  language "pl" do
    sha256 "a3ec3243a7fe8e411094da0a2b943fe367509ae562d23ef83a979b810862ce3f"
    "pl"
  end
  language "pt-BR" do
    sha256 "acbe0bf4ad1a368c9744d5467f95c60426fdcc2f27d6a68243af4ecbb11e298c"
    "pt-BR"
  end
  language "pt" do
    sha256 "c4f77539a5ea7446379005cbe5afe2f2c22dd4d1ea7f0f6333e33acd54765657"
    "pt-PT"
  end
  language "ru" do
    sha256 "f7d89cc0c82305b3e0893dc120fe91aa405567f753295c6846c3a75f9c27f687"
    "ru"
  end
  language "sk" do
    sha256 "5ef632ba856e7a798045a93403d87e83eabb861970e4a0ca4ae897c77cab9d5e"
    "sk"
  end
  language "sv" do
    sha256 "bf743f991035c7ade068eeebfb93babbe626be3ad36900d53f05ec313a325685"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "636ba1c4fe09066f9353a2d230e49ed81ffae6a7aceb41e163163bfdf973796d"
    "zh-TW"
  end
  language "zh" do
    sha256 "bc5f7ff406ce0ab1fb973053ec89620be8bd212a5229e04a9477a0f4466604d9"
    "zh-CN"
  end

  url "https://archive.seamonkey-project.org/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
