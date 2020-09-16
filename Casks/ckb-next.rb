cask "ckb-next" do
  version "0.4.2"
  sha256 "2cb5cde9ed4514e85ec492af84c60692fe2f91495d788678a723396b083bbb52"

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
