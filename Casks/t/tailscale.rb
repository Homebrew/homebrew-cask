cask "tailscale" do
  version "1.60.0"
  sha256 "7a144bf5ef178dc679cdf09d69d57902ca1b35d5e0e5f9c5b3cddd7df0752b21"

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

  uninstall quit:       "io.tailscale.ipn.macsys",
            login_item: "Tailscale"

  zap trash: [
    "~/Library/Application Scripts/*.io.tailscale.ipn.macsys",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys",
    "~/Library/Application Scripts/io.tailscale.ipn.macsys.share-extension",
    "~/Library/Containers/io.tailscale.ipn.macos.network-extension",
    "~/Library/Containers/io.tailscale.ipn.macsys",
    "~/Library/Containers/io.tailscale.ipn.macsys.share-extension",
    "~/Library/Containers/Tailscale",
    "~/Library/Group Containers/*.io.tailscale.ipn.macsys",
    "~/Library/Tailscale",
  ]
end
