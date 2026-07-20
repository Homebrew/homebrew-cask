cask "font-zhudou-sans" do
  version "2.000"
  sha256 "1a2718aa52c98d1ac7e18d60e0f1d61057b18e558e8196a3a770104855a6fc69"

  url "https://github.com/Buernia/Zhudou-Sans/releases/download/v#{version}/Zhudou.Sans.zip"
  name "Zhudou Sans"
  name "煮豆黑体"
  homepage "https://github.com/Buernia/Zhudou-Sans"

  font "otf/ZhudouSans-Bold.otf"
  font "otf/ZhudouSans-ExtraLight.otf"
  font "otf/ZhudouSans-Heavy.otf"
  font "otf/ZhudouSans-Light.otf"
  font "otf/ZhudouSans-Medium.otf"
  font "otf/ZhudouSans-Normal.otf"
  font "otf/ZhudouSans-Regular.otf"

  # No zap stanza required
end
