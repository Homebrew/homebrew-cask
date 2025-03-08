cask "font-source-han-code-jp" do
  version "2.012R"
  sha256 "678a3bf747269c7df6fa892ed9eb050139af77f2d50ec9408d99027da88f3b4b"

  url "https://github.com/adobe-fonts/source-han-code-jp/archive/refs/tags/#{version}.tar.gz"
  name "Source Han Code JP"
  homepage "https://github.com/adobe-fonts/source-han-code-jp"

  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-Bold.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-BoldIt.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-ExtraLight.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-ExtraLightIt.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-Heavy.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-HeavyIt.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-Light.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-LightIt.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-Medium.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-MediumIt.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-Normal.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-NormalIt.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-Regular.otf"
  font "source-han-code-jp-#{version}/OTF/SourceHanCodeJP-RegularIt.otf"

  # No zap stanza required
end
