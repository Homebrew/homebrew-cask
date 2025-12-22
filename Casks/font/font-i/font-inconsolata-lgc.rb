cask "font-inconsolata-lgc" do
  version "1.220"
  sha256 "c71812e8cdb7255c2b6c9aa0092f482577b817d8758c991e6a55841bc7858e62"

  url "https://github.com/MihailJP/Inconsolata-LGC/releases/download/LGC-#{version}/InconsolataLGC-#{version}.tar.xz"
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
