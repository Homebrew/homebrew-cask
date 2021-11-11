cask "jupyterlab" do
  version "3.2.1-2"
  sha256 "e010f1661242efb8bdb4ec0f8cd5149caeee1cd99faf0091a4b15692f6561b5c"

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
