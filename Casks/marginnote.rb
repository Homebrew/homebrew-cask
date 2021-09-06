cask "marginnote" do
  version "3.7.12,3.7.12005"
  sha256 "f0a17470c5b7e51949f1309bb2e0909830e03d6d9b5272b4eaed94bb008df0cc"

  url "https://marginstudy.com/mac/MarginNote#{version.major}.dmg",
      verified: "marginstudy.com/"
  name "MarginNote"
  desc "E-reader"
  homepage "https://www.marginnote.com/"

  livecheck do
    url "https://dist.marginnote.cn/marginnote#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end
