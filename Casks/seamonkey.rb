cask "seamonkey" do
  version "2.53.10"

  language "de" do
    sha256 "ac4ef957d9afe16efa67be7c213b10422c8ba4c8cff706d3e954b222a02a0c49"
    "de"
  end
  language "en-GB" do
    sha256 "77dc31b0ee23f005b3f83b228adf228f2b5517a25f258c764455dd020810f19d"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "5d1f20465c21beadcb8241aa83dcd83d60c119a5500a75d918d3520ea251fb37"
    "en-US"
  end
  language "fr" do
    sha256 "b28773afb159878a68f548c26dc88ee792f67d9f6b9ff549ea06a23634e7c550"
    "fr"
  end
  language "it" do
    sha256 "21231b368fedd8f5fd879454571ee9a31080ff9ce7146bc06d8bc29bf3e9668f"
    "it"
  end
  language "ru" do
    sha256 "d9305c8b4c8a893da8961f6ef173bdbc3f34f007e4e9edadb83a2fe8bd6809c1"
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
end
