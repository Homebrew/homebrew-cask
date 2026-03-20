cask "font-inconsolata-lgc" do
  version "2.001"
  sha256 "69f3a224ceb58edc853698e950fbcc97ddad5db9113dc57494d630d8e5a63d21"

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
