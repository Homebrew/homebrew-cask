cask "kazumi" do
  version "1.7.3"
  sha256 "6a78324dc33cd56b1bc881c60f66c2d5bd4de8d3f32843c5b539ca05fcb72e70"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "基于自定义规则的番剧采集APP，支持流媒体在线观看，支持弹幕，支持实时超分辨率。"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kazumi.app"

  zap trash: ""
end
