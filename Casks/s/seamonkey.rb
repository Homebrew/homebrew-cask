cask "seamonkey" do
  version "2.53.18"

  language "cs" do
    sha256 "c39e0d8178d5f117e8d09421d604e78fb1359faffd82fc5a4de3c61a646ed0fd"
    "cs"
  end
  language "de" do
    sha256 "d25a41050c31827b2b0c3f7d46bb481d24518028cd4d8084d460dbad403d6a8f"
    "de"
  end
  language "el" do
    sha256 "e67519f351703bef02eb3f8cfe91e7b6ba7e6106d966ea0ac5f4ad5de72001a3"
    "el"
  end
  language "en-GB" do
    sha256 "7b39bb66831c459dc3a7c79050f4c584f6c0fc41f10d239871eca94c1b2fef75"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "ef6587921d64b68301466123788d7aa564eeaed26da77536919ab893164cb2fa"
    "en-US"
  end
  language "es-AR" do
    sha256 "6ebe3ffb34c4c099302f3fffe89dd525604f4ddcb8df2230df23baa7382da364"
    "es-AR"
  end
  language "es-ES" do
    sha256 "c5c38a5f9faf6431f830e3d59eb351b894a7c4e531ac6bf34533bbff1d254dca"
    "es-ES"
  end
  language "fi" do
    sha256 "87b7c47aab8df831e44cb76e709cc972067237394bff4b113ad61618e90fd2e7"
    "fi"
  end
  language "fr" do
    sha256 "337ceae11f54b6b08ce5697175a8aa162f0ce291e31493989f2ae909b4a3f10f"
    "fr"
  end
  language "hu" do
    sha256 "33c92d45234d2ea7b21354f270cb2ed1dde09c29fad331c602289c68413a4557"
    "hu"
  end
  language "it" do
    sha256 "b5536392da529331be0622ba7b2304615d3874a9e16f41279e72d73cdad8d286"
    "it"
  end
  language "ja" do
    sha256 "aa650407de408326bc586b350c15811297a6c09cefb9135d7fa74368ee80fbcc"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "6bee7971d1a4967729e7db379206d4aecdad6204efedab7929e9554fdaa17e4a"
    "ka"
  end
  language "nl" do
    sha256 "9831690fbea7ce2348b0a75238489a99cc7094539902de5876d0f790f4de671c"
    "nl"
  end
  language "no" do
    sha256 "78240c04234226227cbf02c43357aa638ebf488a3f98c68850350f6a125c583e"
    "nb-NO"
  end
  language "pl" do
    sha256 "8186beb9ace617a81a5690f07edaec34c09226f649e009c66201d62be45775c5"
    "pl"
  end
  language "pt-BR" do
    sha256 "6b694bb6d3ff583a5c0b7de15149bb456238e7c64b8ffe9361fad7023e020b25"
    "pt-BR"
  end
  language "pt" do
    sha256 "44500a5e6fffbbc28f4ca43348982ee5156f87bca25ac82da2dd22db212c7371"
    "pt-PT"
  end
  language "ru" do
    sha256 "16c7e4da714993eee1650529e8835780a0da2b235a9fd61f5f5c581d373206ed"
    "ru"
  end
  language "sk" do
    sha256 "fb363b82560e89a8fe8918f8ff1df806516032f2f52aa9d19a38084b312b176e"
    "sk"
  end
  language "sv" do
    sha256 "4039f7b13589327252cd79ba01006f05e01f544d04db11a2758ab17e32343ff4"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "d29701f70142984cfc6495ad97ee47564d5327d1b35e801f551f8d517d7f3bbc"
    "zh-TW"
  end
  language "zh" do
    sha256 "f9a0b9db4b6e38b2af5eca1aaf8391c51b4cf31e8c66297d810bb7121ce621e2"
    "zh-CN"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
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
end
