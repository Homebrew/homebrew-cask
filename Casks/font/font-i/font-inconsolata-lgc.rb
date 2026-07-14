cask "font-inconsolata-lgc" do
  version "3.200"
  sha256 "0107236e7848a428394386da252570d19229c0d4a69d095c4ea9691d808614fa"

  url "https://github.com/MihailJP/Inconsolata-LGC/releases/download/v#{version}/InconsolataLGC-#{version}.tar.xz"
  name "Inconsolata LGC"
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
