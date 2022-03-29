cask "jupyterlab" do
  version "3.3.2-2"
  sha256 "aad7afd56b53589ab772bd12d6d33521b4bd331c7e35fb3704986baa7c71a282"

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
