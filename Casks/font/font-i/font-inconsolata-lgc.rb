cask "font-inconsolata-lgc" do
  version "1.7.2"
  sha256 "e771a9375994909434cf1d1d1adb8956ca994bc4ea0964f60c64cf7a0b9ecf1d"

  url "https://github.com/MihailJP/Inconsolata-LGC/releases/download/LGC-#{version}/InconsolataLGC-#{version}.tar.xz"
  name "Inconsolata LGC"
  desc "Inconsolata LGC is a modified version of Inconsolata with Cyrillic alphabet"
  homepage "https://github.com/MihailJP/Inconsolata-LGC"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "InconsolataLGC/Inconsolata-LGC.ttf"
  font "InconsolataLGC/Inconsolata-LGC-Bold.ttf"
  font "InconsolataLGC/Inconsolata-LGC-Italic.ttf"
  font "InconsolataLGC/Inconsolata-LGC-BoldItalic.ttf"

  # No zap stanza required
end
