cask "infoflow" do
  version "2.3.0.4,2020111810"
  sha256 :no_check

  # hi-static.cdn.bcebos.com/ was verified as official when first introduced to the cask
  url "https://hi-static.cdn.bcebos.com/hi-official/infoflow_setup.dmg"
  name "Baidu Hi"
  name "百度 Hi"
  name "如流"
  name "infoflow"
  homepage "https://infoflow.baidu.com/"

  app "如流.app"
end
