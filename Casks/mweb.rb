cask "mweb" do
  version "4.1.3"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWeb#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "c0c71e3ab96a30a20b6ac9f4e21bc24fb8a6b5489fb5ec1bfb95d02b18ff2b81"
  else
    url "https://cdn.mwebapp.cn/MWeb#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "f3da899d19bd6abb93c1e365feb4c964062124d118967170c0c1b34c413798b4"
  end

  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  livecheck do
    url "https://www.mweb.im/download.html"
    regex(/>Download\s*MWeb\s*(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :high_sierra"

  app "MWeb.app"
end
