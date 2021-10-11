cask "jupyterlab" do
  version "3.1.18-1"
  sha256 "6502077f70dcf9a92617a1beb7c721b54aa6e7ed601713762a3226dd854ae176"

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
