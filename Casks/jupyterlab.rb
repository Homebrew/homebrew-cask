cask "jupyterlab" do
  version "3.1.12-2"
  sha256 "0aa7ca1aa088bd5712f77ad9d924fd89eba9a5413f0672d28822a103454894ce"

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
