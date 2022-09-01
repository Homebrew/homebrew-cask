cask "jupyterlab" do
  version "3.4.5-1"
  sha256 "1fd3e33a883d38ca809283577d4f41c8ff54f09e1398c4998d2c0119c3269417"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS.dmg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
  end

  app "JupyterLab.app"

  uninstall pkgutil: "com.electron.jupyterlab-desktop",
            delete:  "/usr/local/bin/jlab"

  zap trash: [
    "~/.jupyter",
    "~/Library/Application Support/jupyterlab-desktop",
    "~/Library/Caches/org.jupyter.jupyterlab-desktop",
    "~/Library/Caches/org.jupyter.jupyterlab-desktop.ShipIt",
    "~/Library/HTTPStorages/org.jupyter.jupyterlab-desktop",
    "~/Library/Jupyter",
    "~/Library/jupyterlab-desktop",
    "~/Library/Logs/jupyterlab-desktop",
    "~/Library/Logs/JupyterLab",
    "~/Library/Preferences/com.electron.jupyterlab-desktop.plist",
    "~/Library/Saved Application State/com.electron.jupyterlab-desktop.savedState",
  ]
end
