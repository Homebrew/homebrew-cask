cask "font-berka-mono-closer" do
  version "0.1.0"
  sha256 "0eb20ff4924a712dfeac321b8af4cfe047da6c976945cc6617f3c7692cab0e1b"

  url "https://github.com/vinitkumar/berka-mono-closer/releases/download/v#{version}/BerkaMonoCloser-TTF.zip"
  name "Berka Mono Closer"
  desc "Iosevka custom build with a calm, wide, rectangular coding texture"
  homepage "https://github.com/vinitkumar/berka-mono-closer"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "BerkaMonoCloser-Bold.ttf"
  font "BerkaMonoCloser-BoldItalic.ttf"
  font "BerkaMonoCloser-Italic.ttf"
  font "BerkaMonoCloser-Medium.ttf"
  font "BerkaMonoCloser-MediumItalic.ttf"
  font "BerkaMonoCloser-Regular.ttf"
  font "BerkaMonoCloser-SemiBold.ttf"
  font "BerkaMonoCloser-SemiBoldItalic.ttf"

  # No zap stanza required
end
