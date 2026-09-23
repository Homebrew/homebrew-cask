cask "font-inconsolata-lgc" do
  version "3.400"
  sha256 "95c552e0a8878ddaa8683cd5a6f344e9ad7821c2c6d1f538f09e1c19fce5e550"

  url "https://github.com/MihailJP/Inconsolata-LGC/releases/download/v#{version}/InconsolataLGC-#{version}.tar.xz"
  name "Inconsolata LGC"
  homepage "https://github.com/MihailJP/Inconsolata-LGC"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "InconsolataLGC/Inconsolata-LGC-Bold.ttf"
  font "InconsolataLGC/Inconsolata-LGC-BoldItalic.ttf"
  font "InconsolataLGC/Inconsolata-LGC-Italic.ttf"
  font "InconsolataLGC/Inconsolata-LGC.ttf"

  # No zap stanza required
end
