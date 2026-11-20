cask "font-inconsolata-lgc" do
  version "4.000"
  sha256 "582053f73f4fca491f3c6e3b9df57fd7ade5bd6cc1342a81304d5ad8e552ba93"

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
