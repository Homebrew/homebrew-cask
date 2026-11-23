cask "open-screen-sharing" do
  version "1.0.9"
  sha256 "c814514ab0626f28166859aa6728de6e55ea3512a485958e2b9fb28171d3f6f1"

  url "https://github.com/nekohasekai/open-screen-sharing/releases/download/v#{version}/OpenScreenSharing.pkg"
  name "Open Screen Sharing"
  desc "Remote desktop client for VNC and RDP"
  homepage "https://github.com/nekohasekai/open-screen-sharing"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "OpenScreenSharing.pkg"

  uninstall quit:    "io.nekohasekai.screensharing",
            pkgutil: "io.nekohasekai.screensharing"

  zap trash: [
    "~/Library/Caches/io.nekohasekai.screensharing",
    "~/Library/Group Containers/P8XK3KHB48.io.nekohasekai.screensharing",
    "~/Library/HTTPStorages/io.nekohasekai.screensharing",
    "~/Library/Preferences/io.nekohasekai.screensharing.plist",
  ]
end
