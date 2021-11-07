cask "jupyterlab" do
  version "3.2.1-1"
  sha256 "7d8793def296ff4e5ddacf3c7f77ab741e605e1a9d9c46443dfab56c9b617e40"

  url "https://github.com/jupyterlab/jupyterlab_app/releases/download/v#{version}/JupyterLab-Setup-macOS.pkg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab_app"

  pkg "JupyterLab-Setup-macOS.pkg"

  uninstall pkgutil: [
    "com.electron.jupyterlabapp",
    "com.electron.jupyterlab-desktop",
  ],
            delete:  [
              "/Applications/JupyterLab.app",
            ]

  zap trash: [
    "~/Library/Application Support/jupyterlab_app",
    "~/Library/Logs/JupyterLab",
    "~/Library/Logs/jupyterlab_app",
    "~/Library/Preferences/com.electron.jupyterlabapp.plist",
    "~/Library/Saved Application State/com.electron.jupyterlabapp.savedState",
  ]
end
