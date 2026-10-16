cask "headlamp" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.46.0"
  sha256 arm:          "20294a2f1e92aa98c2a90aa0717b6b8e730ed55a0300c03db18c2f779ed7b564",
         intel:        "946c72185732295fefe48e52efdb210a029eaa3fc443813bc8cbbb81b05f87ac",
         arm64_linux:  "224a8415a5342774abd3b51248b882e982f11ff7757193485d5775a01ae5b3e9",
         x86_64_linux: "d0aa9ca6a80d7f9f40a9d383f3293501f7d88a63573fbc75cef079c405c97dda"

  on_macos do
    depends_on macos: :monterey

    app "Headlamp.app"

    uninstall quit: "com.kinvolk.headlamp"

    zap trash: [
      "~/Library/Application Support/Headlamp",
      "~/Library/Logs/Headlamp",
      "~/Library/Preferences/com.kinvolk.headlamp.plist",
    ]
  end
  on_linux do
    app_image "Headlamp-#{version}-linux-#{arch}.AppImage", target: "Headlamp.AppImage"
  end

  url "https://github.com/headlamp-k8s/headlamp/releases/download/v#{version}/Headlamp-#{version}-#{os}-#{arch}.#{url_end}"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://headlamp.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
