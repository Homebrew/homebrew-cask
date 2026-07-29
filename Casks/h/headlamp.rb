cask "headlamp" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.44.0"
  sha256 arm:          "b9324923af6b7a4ccf6210bbf0a5cc907b885fea94f6ded7b9674f5024762e74",
         intel:        "b4e88ee479382b469803fed0c5e60031edb9ad786e29b30bb0b9e7bb719ac59b",
         arm64_linux:  "4b86203aa3161328acb92eb576029c10984ef273b6e4dd8b2ad9791301475f31",
         x86_64_linux: "c34c0c0a1300910ad9ae8590a87e6d2a1247e33d9e70c752ec02f1a21266122c"

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
