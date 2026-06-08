cask "font-pretendard-jp" do
  version "1.3.9"
  sha256 "8dab678c371a1530106ca643b76b2b80d47653d5ba670b01265b48e4c6615d63"

  url "https://github.com/orioncactus/pretendard/releases/download/v#{version}/PretendardJP-#{version}.zip"
  name "Pretendard JP"
  homepage "https://github.com/orioncactus/pretendard"

  font "public/static/PretendardJP-Black.otf"
  font "public/static/PretendardJP-Bold.otf"
  font "public/static/PretendardJP-ExtraBold.otf"
  font "public/static/PretendardJP-ExtraLight.otf"
  font "public/static/PretendardJP-Light.otf"
  font "public/static/PretendardJP-Medium.otf"
  font "public/static/PretendardJP-Regular.otf"
  font "public/static/PretendardJP-SemiBold.otf"
  font "public/static/PretendardJP-Thin.otf"

  # No zap stanza required
end
