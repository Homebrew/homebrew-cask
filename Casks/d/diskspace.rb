cask "diskspace" do
  version "1"
  sha256 "918e9796e3390b2644efd4deb36d4095599be5372fddc8536f91bfeba01f66ee"

  url "https://github.com/scriptingosx/diskspace/releases/download/v#{version}/diskspace-#{version}.pkg"
  name "diskspace"
  desc "Show available disk space on APFS volumes"
  homepage "https://github.com/scriptingosx/diskspace"

  depends_on macos: ">= :mojave"

  pkg "diskspace-#{version}.pkg"

  uninstall pkgutil: "com.scriptingosx.diskspace"

  # No zap stanza required
end
