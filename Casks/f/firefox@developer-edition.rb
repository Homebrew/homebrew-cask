cask "firefox@developer-edition" do
  version "131.0b2"

  language "ca" do
    sha256 "e6dbe851278c1cf3aa3cebd2fc45d0c3cf09a1046ff9579b28c1c2aabb837c0f"
    "ca"
  end
  language "cs" do
    sha256 "4b8c9530b2a1bf2f4fbb7a18c620a1e938630cf3660b8b2a0c801a4519f33adf"
    "cs"
  end
  language "de" do
    sha256 "b78510c67f9c46a156b1839edb9fdd2330eb5251e65917aee5bbf4c3e543b9d8"
    "de"
  end
  language "en-CA" do
    sha256 "a3a8ccf8cbecffa40176ac0989f2ddfa7a4ff4067786846bb93a9c3020a53819"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cdfe5eb605fed803bc6b2a5f90841ff1ef0c9c942d2bd9a3e4b86a0c606ce119"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e6170ebcf6ff0adfdf17f129a53170d55ae58b68d3fdb7e042c91d42b9fed0c"
    "en-US"
  end
  language "es" do
    sha256 "9b71063446433d586e65e5e8332cf07915c0b0ff43e76545c3482aa963724419"
    "es-ES"
  end
  language "fr" do
    sha256 "30c41aac209bb42190a1708ba4ee72ddc84a16f800216c990d2a78bd42e075b6"
    "fr"
  end
  language "it" do
    sha256 "75c7ee7639c1b7dc46c9dad3f39615204596890cc1b8827d6c71db3c163724cd"
    "it"
  end
  language "nl" do
    sha256 "4b00af6796c764f0e2e8944cbf89994dc07cd00d2909d802b86a3590a4134b18"
    "nl"
  end
  language "ja" do
    sha256 "23f3a9759b938e05464278aa1da1ad7bdbe3545dd29437d4666ee19000fadb4d"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "dbc73923fddecc6dc59b8a2451b7a1eaa7572abf1536764e58f5d6a0af7992ba"
    "pt-BR"
  end
  language "ko" do
    sha256 "04e0dde552ba8d22cc5583871794fdea1d2a5dc25b2d6c9ded7e431dc6562aad"
    "ko"
  end
  language "ru" do
    sha256 "16db2be781d2ad5ed993a86f50a7f13f9ce2da04aa926de0c3cf27c3e2d2ab47"
    "ru"
  end
  language "uk" do
    sha256 "c9475e45101c448a02f246b3d5cae706825251db8042b52ea0d2abddd9c5b6ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "931c0c845bb5bf4d5815b1073218d0225ec0078fb1f43dd77bf2ea742c225ded"
    "zh-TW"
  end
  language "zh" do
    sha256 "33ce913d94b3ff6b7196dd744c81a3c3106c9c7a5cf9819f0b15977ed7ae5df7"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
