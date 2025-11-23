cask "seamonkey" do
  version "2.53.22"

  language "cs" do
    sha256 "ca007f8cc587d39913e96e7ba7ed846e159af304b04d5e87ba5f0921901d32a3"
    "cs"
  end
  language "de" do
    sha256 "b958aff2a60af5a6de07e3016d6ea678b2a74e38d60e66953a567ff341751497"
    "de"
  end
  language "el" do
    sha256 "49177482442c75a8d29758cfc7c3c28391afd1caac4edcaa956ee994fdda3be8"
    "el"
  end
  language "en-GB" do
    sha256 "acbeae2ca844daad8744aed940e3cffda12e1f5d6fa06768c61f44e38923f876"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "3f516bc4f0230f9f4a96e6f679f8c5fee7474883ce854071a313fcb0090bb9a4"
    "en-US"
  end
  language "es-AR" do
    sha256 "95ad2fe83a5e3a3b387019016583c8c02977dfd51ee2ab10f56fd37f0c87c25e"
    "es-AR"
  end
  language "es-ES" do
    sha256 "998b63fb902350f5981ef5ad4b93ec6829105de716abfefb1dab6d3ab132acb1"
    "es-ES"
  end
  language "fi" do
    sha256 "616d51e893cb8d72fe5f94001332b11409cb8ec8ce9bbb20829633e6d3f0b9ad"
    "fi"
  end
  language "fr" do
    sha256 "77add5d41f28148298dccd6618d9934ff49bec2f1cb8ebcae4f0986cc0a658d6"
    "fr"
  end
  language "hu" do
    sha256 "5f0f46bbfa1a3833162a7ee7f432cab3675334d635d4ed7d1daa509e5f56fc86"
    "hu"
  end
  language "it" do
    sha256 "0f08312ce9224cab771c45a426526e4c71d77a879ac4c39c565e1919f24c37af"
    "it"
  end
  language "ja" do
    sha256 "7ec8ec5973bb31f4f42c117af621a35f92482cc525811417e314740f79c2d771"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "4e9ef0ce22d21111a36a8d94bb294d51024b78ae80f47055f7b743cfa8a114f0"
    "ka"
  end
  language "nl" do
    sha256 "c49a4cfaf615ffa6a0e8b878e3c0439018a2e8a36e2689d431f2d6c8fdb0fb8c"
    "nl"
  end
  language "no" do
    sha256 "c8c6247bf3bdaec9abcd3f41f4e4bc77075b107a7a914bf9c1367cb020833914"
    "nb-NO"
  end
  language "pl" do
    sha256 "f022047eba2779f133f0abc99464e440a4df5ad4751f1b45245ce8951379b54d"
    "pl"
  end
  language "pt-BR" do
    sha256 "0b985257d8d86415b7a1e606ee4cf4c0259f10405ff8c10cecfadd61558a4722"
    "pt-BR"
  end
  language "pt" do
    sha256 "9de7854b1e40b964e0d46d0879633c8a27507cede09e1c4cc120b67eb773e712"
    "pt-PT"
  end
  language "ru" do
    sha256 "6be7b6d0f4915d2f0d509273f29b7eac1232ba1e48774c4b47de8e5f814cb17a"
    "ru"
  end
  language "sk" do
    sha256 "082b9ede6cc110383e16c32e1e5eddb6e2740c70ed90c8b570c4a0b9dd41e43b"
    "sk"
  end
  language "sv" do
    sha256 "ef3ab0f054c459c63dd3065a07c68ebce42deb62a408aa5fc23466ccf965b9f4"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "8e3fed9abce4afde8c1c8cca2265a71f1faf595839e6a14c264adba7bed8b80b"
    "zh-TW"
  end
  language "zh" do
    sha256 "febce14b0d75bd950abc36a2739196c17c0930a3316180b3af63316d6103e16f"
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
