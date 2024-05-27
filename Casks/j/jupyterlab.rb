cask "jupyterlab" do
  arch arm: "arm64", intel: "x64"

  version "4.2.1-1"
  sha256 arm:   "973cf57f8fedffa2cd557c26a7806c7b0e3b566e6e3e9476f84e8ba334fc6777",
         intel: "2192ddc4cc5ba2f03012dbe7f8cc5bcb7408a4d9283640b06996474e95667b38"

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
