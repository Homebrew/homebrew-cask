cask "rar" do
  arch arm: "arm", intel: "x64"

  version "6.20"
  sha256 arm:   "62e0624568e32f780ac114da21e8810206d5c692b9914ecbaf28cb33be7b2c72",
         intel: "29b1545b70852dbe393cc45d10481c1f2f46101dc7a84919c02af43372760d1e"

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>s*RAR\s+v?(\d+(:?\.\d+)+)\s+for\s+macOS/i)
  end

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"
end
