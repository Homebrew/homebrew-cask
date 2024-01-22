cask "jupyterlab" do
  arch arm: "arm64", intel: "x64"

  version "4.0.11-1"
  sha256 arm:   "7a5e2835cace550c2ce9b701e8fcb954945917ffab9a139c9b243c757d433328",
         intel: "be8b6cd7f8cb8f7e5850cf91b66de5da3120a4620bbcf434fc7cc2845e714257"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS-#{arch}.dmg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  livecheck do
    url :url
    regex(/v?(\d+(?:[.-]\d+)+)/i)
    strategy :github_latest
  end

  app "JupyterLab.app"

  uninstall pkgutil: "com.electron.jupyterlab-desktop",
            # See https://github.com/jupyterlab/jupyterlab-desktop/blob/master/user-guide.md#uninstalling-jupyterlab-desktop
            delete:  [
              "/usr/local/bin/jlab",
              "~/Library/jupyterlab-desktop",
            ]

  zap trash: [
    "~/.jupyter",
    "~/Library/Application Support/jupyterlab-desktop",
    "~/Library/Caches/org.jupyter.jupyterlab-desktop",
    "~/Library/Caches/org.jupyter.jupyterlab-desktop.ShipIt",
    "~/Library/HTTPStorages/org.jupyter.jupyterlab-desktop",
    "~/Library/Jupyter",
    "~/Library/Logs/JupyterLab",
    "~/Library/Logs/jupyterlab-desktop",
    "~/Library/Preferences/com.electron.jupyterlab-desktop.plist",
    "~/Library/Saved Application State/com.electron.jupyterlab-desktop.savedState",
  ]
end
