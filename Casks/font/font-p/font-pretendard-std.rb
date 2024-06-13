cask "font-pretendard-std" do
  version "1.3.9"
  sha256 "bde2ecb6aa27fb1d36b729b47b1cad5a890dca8e8a06aebe0727b4c27624ad42"

  url "https://github.com/orioncactus/pretendard/releases/download/v#{version}/PretendardStd-#{version}.zip"
  name "Pretendard Std"
  homepage "https://github.com/orioncactus/pretendard"

  font "public/static/PretendardStd-Black.otf"
  font "public/static/PretendardStd-Bold.otf"
  font "public/static/PretendardStd-ExtraBold.otf"
  font "public/static/PretendardStd-ExtraLight.otf"
  font "public/static/PretendardStd-Light.otf"
  font "public/static/PretendardStd-Medium.otf"
  font "public/static/PretendardStd-Regular.otf"
  font "public/static/PretendardStd-SemiBold.otf"
  font "public/static/PretendardStd-Thin.otf"

  # No zap stanza required
end
