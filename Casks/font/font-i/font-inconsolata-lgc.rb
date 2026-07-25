cask "font-inconsolata-lgc" do
  version "3.201"
  sha256 "1d8efeba0b5b3a26714ecba441c957787568e763ff277e0fa160bde868c2e12f"

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
