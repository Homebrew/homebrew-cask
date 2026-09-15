cask "headlamp" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.45.0"
  sha256 arm:          "4f3e7de1c048f8dbe84bfd6c18ac61d0aafd4d909278ca44648d4562c80995f3",
         intel:        "f8e402244aabc99f02a682e67ae2dc01aa06dc3dbf41de6c5bbcad1da1093021",
         arm64_linux:  "831f13c4c04571de5f977ae6f10d29a300324290afb30c48a5c54b071d2e83c1",
         x86_64_linux: "3c50102b99ffed5e802533187df3458efe8627ded5e790f490e54be1b4094765"

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
