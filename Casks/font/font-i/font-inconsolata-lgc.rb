cask "font-inconsolata-lgc" do
  version "3.420"
  sha256 "6332dd70a35c948d08ab9f89128542df11c962d17b4c0e6b961838218000b16f"

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

  zap :not_required
end
