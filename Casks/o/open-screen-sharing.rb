cask "open-screen-sharing" do
  version "1.0.6"
  sha256 "925c238608794a447c182362aa3762a540f9cb0579554486759cf4ee1861c8b1"

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
