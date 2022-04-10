cask "jupyter-notebook-viewer" do
  version "0.1.5"
  sha256 "4bf3ff38a9539d7d0f16122522599f44fde5833d1a16c704e49beb754d60a062"

  url "https://github.com/tuxu/nbviewer-app/releases/download/#{version}/nbviewer-app.zip"
  name "Jupyter Notebook Viewer"
  desc "Utility to render Jupyter notebooks"
  homepage "https://github.com/tuxu/nbviewer-app"

  depends_on macos: ">= :sierra"

  app "Jupyter Notebook Viewer.app"
end
