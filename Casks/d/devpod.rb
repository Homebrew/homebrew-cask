cask "devpod" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.15"

  on_macos do
    sha256 arm:   "63fea2f91762be167a53267722b1f37b95214bb1824957e2eeaf38d41f6a16af",
           intel: "f90c172732d7430b74a221b3af7602fcadcf0175a3dfce3b9ce7953e8f93d2ed"

    app "DevPod.app"
    binary "#{appdir}/DevPod.app/Contents/MacOS/devpod-cli", target: "devpod"

    zap trash: [
      "~/.devpod",
      "~/Library/Application Support/sh.loft.devpod",
      "~/Library/Caches/sh.loft.devpod",
      "~/Library/Logs/sh.loft.devpod",
      "~/Library/Preferences/sh.loft.devpod.plist",
      "~/Library/Saved Application State/sh.loft.devpod.savedState",
      "~/Library/WebKit/sh.loft.devpod",
    ]
  end
  on_linux do
    sha256 "eb8bfefc4f2c3f20bce370877e985fcc750858f7f06a5db06cfe339cd1eca9ba"

    depends_on arch: :x86_64

    app_image "DevPod_linux_amd64.AppImage", target: "DevPod.AppImage"
  end

  url "https://github.com/loft-sh/devpod/releases/download/v#{version}/DevPod_#{os}_#{arch}.#{url_end}"
  name "DevPod"
  desc "UI to create reproducible developer environments based on a devcontainer.json"
  homepage "https://devpod.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
