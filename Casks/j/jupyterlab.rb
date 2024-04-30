cask "jupyterlab" do
  arch arm: "arm64", intel: "x64"

  version "4.1.8-1"
  sha256 arm:   "8077566b75b4591d4746d3e7bc21ecb63603f9b3d6de0da69fad629c36d9e778",
         intel: "044d15d3785956ef6e6fb61ad38ba4767ee0b9a29bc2216601392f63387ae267"

  url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version}/JupyterLab-Setup-macOS-#{arch}.dmg"
  name "JupyterLab App"
  desc "Desktop application for JupyterLab"
  homepage "https://github.com/jupyterlab/jupyterlab-desktop"

  livecheck do
    url :url
    regex(/v?(\d+(?:[.-]\d+)+)/i)
    strategy :github_latest
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
    "~/Library/Logs/JupyterLab",
    "~/Library/Logs/jupyterlab-desktop",
    "~/Library/Preferences/com.electron.jupyterlab-desktop.plist",
    "~/Library/Saved Application State/com.electron.jupyterlab-desktop.savedState",
  ]
end
