cask "mweb-pro" do
  version "4.1.9"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "2e7595eef4acc0553adf8ea2ed1ba537f8f2862f84b027f26714b4486a75af85"
  else
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "b7b49b7684bdadeaa5cddc7228043076ff297b88cc17ffc845d5c9abea964baf"
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
