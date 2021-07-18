cask "infoflow" do
  version "2.3.6.2,2021062519"
  sha256 :no_check

  url "https://hi-static.cdn.bcebos.com/hi-official/infoflow_setup.dmg",
      verified: "hi-static.cdn.bcebos.com/"
  name "Baidu Hi"
  name "百度 Hi"
  name "如流"
  name "infoflow"
  homepage "https://infoflow.baidu.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "如流.app"
end
