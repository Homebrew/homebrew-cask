cask "jupyterlab" do
  version "3.3.2-1"
  sha256 "9b3dae930edececbaff77f2127d0c1cf22d89e19643b307fb6be85b5ea71aeec"

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
