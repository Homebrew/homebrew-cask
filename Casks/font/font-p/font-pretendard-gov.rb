cask "font-pretendard-gov" do
  version "1.3.9"
  sha256 "080266d2faa8911b0e239b367405fdbcb2b4e17b22067e40aeb34a6c3fca0ac4"

  url "https://github.com/orioncactus/pretendard/releases/download/v#{version}/PretendardGOV-#{version}.zip"
  name "Pretendard GOV"
  homepage "https://github.com/orioncactus/pretendard"

  font "public/static/PretendardGOV-Black.otf"
  font "public/static/PretendardGOV-Bold.otf"
  font "public/static/PretendardGOV-ExtraBold.otf"
  font "public/static/PretendardGOV-ExtraLight.otf"
  font "public/static/PretendardGOV-Light.otf"
  font "public/static/PretendardGOV-Medium.otf"
  font "public/static/PretendardGOV-Regular.otf"
  font "public/static/PretendardGOV-SemiBold.otf"
  font "public/static/PretendardGOV-Thin.otf"

  # No zap stanza required
end
