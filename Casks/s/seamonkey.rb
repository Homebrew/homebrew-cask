cask "seamonkey" do
  version "2.53.24"

  language "cs" do
    sha256 "0e0bd1c7c037a8a399f4b1aaaa239aed32368efac646be6c73ce6228855c7a5c"
    "cs"
  end
  language "de" do
    sha256 "2027e62628eeb40c372ec9f3ab2335b9318834c68530a2f940a4a8e690288be8"
    "de"
  end
  language "el" do
    sha256 "3d7b40608882515f2f2b0bed9f9191bbb873c071d3e65426ada4e0e3411a368e"
    "el"
  end
  language "en-GB" do
    sha256 "810995399ca58257b736fa7d1c435145907078e41a94b1278bfec2b358e5fb84"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "e2ebabe0f9da45d619134a3c458853f2738db4eceaf30dff6fa048e11ff93d02"
    "en-US"
  end
  language "es-AR" do
    sha256 "f7506f96a91b0d5ac3b5519b6f49b53b2b9b3cf9cf4481e62a2078a867528943"
    "es-AR"
  end
  language "es-ES" do
    sha256 "9ca90c9525f61c761d4fb5ba486f1beac90045635632be91c6e131a0f908321c"
    "es-ES"
  end
  language "fi" do
    sha256 "8d86827253ccba3b7ae1b17873e4293571bd5d2de57635aa1bc052d9f45f5ae4"
    "fi"
  end
  language "fr" do
    sha256 "36536acfb1bb618d668c47a3d6c0b5a8acd2b71d30feab322fcec4502c541649"
    "fr"
  end
  language "hu" do
    sha256 "14362c9ead03ac36668784cb6a46f1c6ee2f879dbcbeee480748c0ae0410b97d"
    "hu"
  end
  language "it" do
    sha256 "a1ef49768505d1acbd561211681ada19e7a72c5f457069f4af0df3bed75df827"
    "it"
  end
  language "ja" do
    sha256 "783e57269358cbd54e49a587b990bef07bfee0c7a9cdb06d4e858757f765e643"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "ae58263576d4057ef78aeb423f0aacaf6accef2dbee1438b809d6118da5c6ec0"
    "ka"
  end
  language "nl" do
    sha256 "329a8431e41e534f6e55816658994c8259fab4af66bf20944d98dc8601211baf"
    "nl"
  end
  language "no" do
    sha256 "5cda2bd78193320a63be883aa70f03d36186d1d9a650dcf1200ab31f67e2a3c3"
    "nb-NO"
  end
  language "pl" do
    sha256 "5a9cf4b23f72af941de72a9df622527011af08c2b6e6556f4c2d0c83210e0d3d"
    "pl"
  end
  language "pt-BR" do
    sha256 "5285142f512e1d92d83cf84358861746c95e08b51f1e9caf738eec383e89d18c"
    "pt-BR"
  end
  language "pt" do
    sha256 "3752afb91e69e6058903ef6bea8b8c6345e0cd04a9c5b4f2ca06e28768b608b6"
    "pt-PT"
  end
  language "ru" do
    sha256 "cbc63ec3dae4ca7a795e6910ed1bf41e460a889f5872548fc52fb1d19bc0ac98"
    "ru"
  end
  language "sk" do
    sha256 "5819109e6e89a75b7d51a2f244c9d22fb1785e9ddd4757587f86b1d9a4cedf04"
    "sk"
  end
  language "sv" do
    sha256 "5b8488db874bf2016b0133309e055b0fa992e646585e0202927f76ea33ff701e"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "5c2f416586b23b0e7b19d56e5d352f6597daa2b0185f72f5fdf1f959aaeb73e2"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2c992e1f3b372d2195828d5caaa89a3deb4adc6bd669fbb95a1c115571eb7f8"
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on :macos

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
