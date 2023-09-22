cask "seamonkey" do
  version "2.53.17.1"

  language "de" do
    sha256 "d38506cd739f62a538e9513f74e87d8c9ef9437f9856d762d6e582eebb3a8490"
    "de"
  end
  language "en-GB" do
    sha256 "06d53e197232b0698b18bb27fa229489ef0f021472cd3775146240e901301410"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "50613ed3043c8313cd95eef0d5cf7d9173a27a6f0e18de106645d8b19994afb7"
    "en-US"
  end
  language "fr" do
    sha256 "aa87e4f110dd6182cc6fcd6d21aca3fc8fea342021fd335ad959ed193932150e"
    "fr"
  end
  language "it" do
    sha256 "d22a1b6a08685ca2b6a30d1fe812b41e2cfd0f7af24ccd78d2184dcac63dc64a"
    "it"
  end
  language "ru" do
    sha256 "8a58a0a6720f037441316e80cc3f8564b234eb998453f8c0c2a9523946966b3f"
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
