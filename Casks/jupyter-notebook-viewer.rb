cask "jupyter-notebook-viewer" do
  version "0.1.4"
  sha256 "6f5fc66aeb71b07430338446ff438963fd6a5ccc00067a059e18a1819b5a5f0d"

  url "https://github.com/tuxu/nbviewer-app/releases/download/#{version}/nbviewer-app.zip"
  appcast "https://github.com/tuxu/nbviewer-app/releases.atom"
  name "Jupyter Notebook Viewer"
  desc "Utility to render Jupyter notebooks"
  homepage "https://github.com/tuxu/nbviewer-app"

  depends_on macos: ">= :sierra"

  app "Jupyter Notebook Viewer.app"
end
