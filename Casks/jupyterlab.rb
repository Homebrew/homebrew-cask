cask "jupyterlab" do
  version "3.1.13-1"
  sha256 "bce13d3022217a72f874a8b654834aaf3f5df4d820fecd40ca113c1a67499ea1"

  url "https://github.com/jupyterlab/jupyterlab_app/releases/download/v#{version}/JupyterLab-Setup-macOS.pkg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab_app"

  pkg "JupyterLab-Setup-macOS.pkg"

  uninstall pkgutil: [
    "com.electron.jupyterlabapp",
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
