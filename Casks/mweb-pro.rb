cask "mweb-pro" do
  version "4.1.8"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "603be03cd9a58454866492dd05f7c287ab20d456be314811b0e81bd3506aff01"
  else
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "2710b95aac19a6f1c4c08d85488fc6c1d40f902aa2d7976bdecd832ef41a8be6"
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
