cask "marginnote" do
  version "3.7.25"
  sha256 "4409e29b6046fc71442f3f2085375dada87b3f06a90892b2334823b0dad75ad3"

  url "https://marginstudy.com/mac/MarginNote#{version.major}.dmg",
      verified: "marginstudy.com/mac/"
  name "MarginNote"
  desc "E-reader"
  homepage "https://www.marginnote.com/"

  livecheck do
    url "https://dist.marginnote.cn/marginnote#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end
