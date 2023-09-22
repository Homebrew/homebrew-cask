cask "thunderbird" do
  version "115.2.3"

  language "cs" do
    sha256 "d9e837c393a3b3583ddc8e537a6efee58d7566f0a40ce2a13bf6624c031cf40a"
    "cs"
  end
  language "de" do
    sha256 "8d9c55641f13260eeab5e37b764ea4e2a8c87ffed6eb54b2cbfdcb82b54b9581"
    "de"
  end
  language "en-GB" do
    sha256 "414160db04b3d00f175bf3b03a17f5d6e6a671012b6ba8e3e56979e2ac657fe2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d77b1fe703ca6437f3f266721ada3f41fd151c9147089466f1bc58dccc166387"
    "en-US"
  end
  language "fr" do
    sha256 "eec723893a4378ee09fd30a490c85d23f56b863e918526166949ae2b9f42aba9"
    "fr"
  end
  language "gl" do
    sha256 "d5a548b547a6e153616937c152eb9a948483a2dbd034497ed0e60a5a01a0a52d"
    "gl"
  end
  language "it" do
    sha256 "2497d862084a3540c3f2efb18c785b7c11a30de273ea82be1e8f15aa7a654cf9"
    "it"
  end
  language "ja" do
    sha256 "3de646e6453100ecc2a94e48e39e2ba0b766857c112273db88ed2dc5248b199a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3cc83124e57abb70b2f08fef3a8d7ba0daba5970799d40cd9f96d79f14abff1a"
    "nl"
  end
  language "pl" do
    sha256 "4edbae58f755109a44f62e4c4166f55b8f1dd1bfe2dc2c2b4ec4001010381b5b"
    "pl"
  end
  language "pt" do
    sha256 "b40e43eaabe04503e77b555c85890a14abac4a61dde1b9c7065f8ae49a707a18"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "58559a0188f21818f01dfe9d9bc35d8ed6506d29b73eb2749bcb04d084a9ed59"
    "pt-BR"
  end
  language "ru" do
    sha256 "7591760e979ea14489e37f76bbc37d049c31ad66dbe2fbc4e10ace5f1b4e6607"
    "ru"
  end
  language "uk" do
    sha256 "b080bd3d53b2830a39dc0f17de017d7e18870b1b03897ad48fcda19dadb716a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "e46ab244c0887e6bff91938fab82802fe62122ad3e09bcdd94adf1466c728c65"
    "zh-TW"
  end
  language "zh" do
    sha256 "e4f99b1d0caea4e5b139b9aee971102aad405509e24e70bf7f15fa291e496f07"
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
