cask "jupyterlab" do
  version "3.3.4-1"
  sha256 "791dc58bace200dfe72ce8d84f8cb3f5c7b7854bde4f4bcdbdec8756b3ef1d15"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS.dmg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  app "JupyterLab.app"

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
