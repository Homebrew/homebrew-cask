cask "mweb-pro" do
  version "4.1.6"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "603be03cd9a58454866492dd05f7c287ab20d456be314811b0e81bd3506aff01"
  else
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "360b0720d51e723743fd0edf611ac5a6dbb78ffc10a3920e4d309a48d1271690"
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
