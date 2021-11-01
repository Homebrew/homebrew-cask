cask "0-ad" do
  version "0.0.25b-alpha"
  sha256 "d1a2073dee3435d8a78bf289206248c9ed6be5e17f4ba1ac8412caf6d0eae0b0"

  url "https://releases.wildfiregames.com/0ad-#{version}-osx64.dmg",
      verified: "releases.wildfiregames.com/"
  name "0 A.D."
  desc "Real-time strategy game"
  homepage "https://play0ad.com/"

  livecheck do
    url "https://play0ad.com/download/mac/"
    regex(/href=.*?0ad[._-]v?(.*?)-osx64\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "0 A.D..app"
end
