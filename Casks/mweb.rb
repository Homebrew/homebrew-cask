cask "mweb" do
  version "4.1.3"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWeb#{version.delete(".")}_catalina.dmg",
        verified: "cdn.mwebapp.cn/MWeb#{version.delete(".")}"
    sha256 "c0c71e3ab96a30a20b6ac9f4e21bc24fb8a6b5489fb5ec1bfb95d02b18ff2b81"
  else
    url "https://cdn.mwebapp.cn/MWeb#{version.delete(".")}.dmg",
        verified: "cdn.mwebapp.cn/MWeb#{version.delete(".")}"
    sha256 "f3da899d19bd6abb93c1e365feb4c964062124d118967170c0c1b34c413798b4"
  end

  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  livecheck do
    url "https://updates.devmate.com/com.coderforart.MWeb#{version.major}.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[%r{/(\d+)/MWeb}i, 1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "MWeb.app"
end
