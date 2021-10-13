cask "mweb-pro" do
  version "4.2.1"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "f9e349ad5e9c5a3bc3bd32271f04af4aa9a772027637507988dc993c1599e399"
  else
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "836d890d2571e45ed3c69a4a9bf35dbb4ee03c08542b9e0be0eb40783bc953b1"
  end

  name "MWeb Pro"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  livecheck do
    url "https://www.mweb.im/download.html"
    regex(/>Download\s*MWeb\s*Pro\s*(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :high_sierra"

  app "MWeb Pro.app"
end
