cask "seamonkey" do
  version "2.53.16"

  language "de" do
    sha256 "2a16b7b543f8038a554c8209ed44fefbf371203779c0be88868d721e9c347b38"
    "de"
  end
  language "en-GB" do
    sha256 "430a2f6c76423ef3073c8054932d2f3c76b98fe63ca5b100979381ce43aebe19"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "f299e5f5992a40c7baad7ea7d2202c0debb359cfcd03cc9a98e4645c7d5a8f91"
    "en-US"
  end
  language "fr" do
    sha256 "f80015b348129fa6729a9d2345c68093199ccf91e21f846f2788619dbfb0539f"
    "fr"
  end
  language "it" do
    sha256 "655a5baa8e6d0f4df9dfb11b0136544aae893613e5b5e96ae3e7995d5c01a0a5"
    "it"
  end
  language "ru" do
    sha256 "623d8420dd9d7d6c0708547865a364efda99356a023288e0e1d5a19613e5ac3d"
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
