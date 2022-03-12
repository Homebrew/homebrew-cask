cask "seamonkey" do
  version "2.53.11"

  language "de" do
    sha256 "0abe96a48b0ef764eec1d3185cbdcdddb6541618401afe22203884705ef35038"
    "de"
  end
  language "en-GB" do
    sha256 "1055012271698385d2ace746b739cbc96fad25b9817a8063da8b8c27c3d33a30"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "c5f3cadb834323b813fefca9110bf7ba78b507bbdc7dd06de5b797d12e2aac57"
    "en-US"
  end
  language "fr" do
    sha256 "e004daef88557140f43709fe256aa96b42b1d756324c1b49c7d9d6e8e3016f16"
    "fr"
  end
  language "it" do
    sha256 "75e723a24f07a00af9e4b4b93cc1015a78bbb906a8e5e79638c2ede41b4ba09c"
    "it"
  end
  language "ru" do
    sha256 "de04600e3b422251c8ce628835dcff1528e9e0eb1111321e306f6c9842cf1220"
    "ru"
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
