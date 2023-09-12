cask "tailscale" do
  version "1.48.2"
  sha256 "3fcd4bd33de5f09bbabbe2ca2f40a8ff35817738a5ba57fed696ea7b0472cd14"

  url "https://pkgs.tailscale.com/stable/Tailscale-#{version}-macos.zip"
  name "Tailscale"
  desc "Mesh VPN based on Wireguard"
  homepage "https://tailscale.com/"

  livecheck do
    url "https://pkgs.tailscale.com/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with formula: "tailscale"
  depends_on macos: ">= :catalina"

  app "Tailscale.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/tailscale.wrapper.sh"
  binary shimscript, target: "tailscale"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Tailscale.app/Contents/MacOS/Tailscale' "$@"
    EOS
  end

  uninstall login_item: "Tailscale",
            quit:       "io.tailscale.ipn.macsys"

  zap trash: [
    "Library/Tailscale",
    "~/Library/Application Scripts/*.io.tailscale.ipn.macsys",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys.share-extension",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys",
    "~/Library/Containers/io.tailscale.ipn.macos.network-extension",
    "~/Library/Containers/io.tailscale.ipn.macsys.share-extension",
    "~/Library/Containers/io.tailscale.ipn.macsys",
    "~/Library/Containers/Tailscale",
    "~/Library/Group Containers/*.io.tailscale.ipn.macsys",
  ]
end
