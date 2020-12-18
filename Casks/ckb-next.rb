cask "ckb-next" do
  version "0.4.3"
  sha256 "1f76332b8a2e7f03497ae91423170a1b4c65bc108594ae5b24349b5daad692bc"

  url "https://github.com/ckb-next/ckb-next/releases/download/v#{version}/ckb-next_v#{version}.dmg"
  appcast "https://github.com/ckb-next/ckb-next/releases.atom"
  name "ckb-next"
  desc "RGB driver"
  homepage "https://github.com/ckb-next/ckb-next"

  depends_on macos: ">= :sierra"

  pkg "ckb-next.mpkg"

  uninstall pkgutil:   [
    "org.ckb-next.ckb",
    "org.ckb-next.daemon",
  ],
            launchctl: "org.ckb-next.daemon"
end
