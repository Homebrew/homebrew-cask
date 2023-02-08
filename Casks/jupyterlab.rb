cask "jupyterlab" do
  version "3.5.1-1"
  sha256 "814948ee9b05a8d17d0e08d7d2faab0a7183a9185d144c7734b4e78c21537afa"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS.dmg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
  end

  app "JupyterLab.app"

  uninstall pkgutil: "com.electron.jupyterlab-desktop",
            # See https://github.com/jupyterlab/jupyterlab-desktop/blob/master/user-guide.md#uninstalling-jupyterlab-desktop
            delete:  [
              "/usr/local/bin/jlab",
              "~/Library/jupyterlab-desktop",
            ]

  zap trash: [
    "~/.jupyter",
    "~/Library/Application Support/jupyterlab-desktop",
    "~/Library/Caches/org.jupyter.jupyterlab-desktop",
    "~/Library/Caches/org.jupyter.jupyterlab-desktop.ShipIt",
    "~/Library/HTTPStorages/org.jupyter.jupyterlab-desktop",
    "~/Library/Jupyter",
    "~/Library/Logs/jupyterlab-desktop",
    "~/Library/Logs/JupyterLab",
    "~/Library/Preferences/com.electron.jupyterlab-desktop.plist",
    "~/Library/Saved Application State/com.electron.jupyterlab-desktop.savedState",
  ]
end
