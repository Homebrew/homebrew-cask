cask "tailscale-app" do
  version "1.104.4"
  sha256 "ee8800f6597acd040ab45f3fece21cb89fb691968a6a2e2a30d1f2f2707b41d2"

  url "https://pkgs.tailscale.com/stable/Tailscale-#{version}-macos.pkg"
  name "Tailscale"
  desc "Mesh VPN based on WireGuard"
  homepage "https://tailscale.com/"

  livecheck do
    url "https://pkgs.tailscale.com/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "Tailscale-#{version}-macos.pkg"

  uninstall quit:       "io.tailscale.ipn.macsys",
            login_item: "Tailscale",
            pkgutil:    "com.tailscale.ipn.macsys",
            delete:     [
              "/usr/local/bin/tailscale",
              "/usr/local/share/man/man8/tssentineld.8",
            ]

  zap trash: [
    "/Library/Tailscale",
    "~/Library/Application Scripts/*.io.tailscale.ipn.macsys",
    "~/Library/Application Scripts/group.W5364U7YZB.io.tailscale.shared",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys.login-item-helper",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys.share-extension",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys.widgets",
    "~/Library/Caches/io.tailscale.ipn.macsys",
    "~/Library/Containers/io.tailscale.ipn.macos.network-extension",
    "~/Library/Containers/io.tailscale.ipn.macsys",
    "~/Library/Containers/io.tailscale.ipn.macsys.login-item-helper",
    "~/Library/Containers/io.tailscale.ipn.macsys.share-extension",
    "~/Library/Containers/io.tailscale.ipn.macsys.widgets",
    "~/Library/Containers/Tailscale",
    "~/Library/Group Containers/*.io.tailscale.ipn.macsys",
    "~/Library/Group Containers/group.W5364U7YZB.io.tailscale.shared",
    "~/Library/HTTPStorages/io.tailscale.ipn.macsys",
    "~/Library/HTTPStorages/io.tailscale.ipn.macsys.binarycookies",
    "~/Library/Preferences/io.tailscale.ipn.macsys.plist",
  ]

  caveats do
    kext
    license "https://tailscale.com/terms"
  end
end
