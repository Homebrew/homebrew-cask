cask "jupyterlab" do
  version "3.2.9-1"
  sha256 "428edb9e98ba35c2546b1bcb9d766a0dc2b83be7d135fd55f1cc6d47bdcf1c35"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS.pkg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  pkg "JupyterLab-Setup-macOS.pkg"

  uninstall pkgutil: "com.electron.jupyterlab-desktop",
            delete:  [
              "/Applications/JupyterLab.app",
              "/usr/local/bin/jlab",
            ]

  zap trash: [
    "~/.jupyter",
    "~/Library/Application Support/jupyterlab-desktop",
    "~/Library/Jupyter",
    "~/Library/Logs/jupyterlab-desktop",
    "~/Library/Logs/JupyterLab",
    "~/Library/Preferences/com.electron.jupyterlab-desktop.plist",
    "~/Library/Saved Application State/com.electron.jupyterlab-desktop.savedState",
  ]
end
