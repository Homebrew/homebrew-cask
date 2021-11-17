cask "jupyterlab" do
  version "3.2.3-1"
  sha256 "df789ac94275c879e81aa6ef162ad599a3d6084551e38b73ee223e3ff2d47271"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS.pkg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  pkg "JupyterLab-Setup-macOS.pkg"

  uninstall pkgutil: [
    "com.electron.jupyterlab-desktop",
  ],
            delete:  [
              "/Applications/JupyterLab.app",
              "/usr/local/bin/jlab"
            ]

  zap trash: [
    "~/Library/Application Support/jupyterlab_app",
    "~/Library/Logs/JupyterLab",
    "~/Library/Logs/jupyterlab_app",
    "~/Library/Preferences/com.electron.jupyterlabapp.plist",
    "~/Library/Saved Application State/com.electron.jupyterlabapp.savedState",
  ]
end
