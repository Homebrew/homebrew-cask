cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.00"
  sha256 arm:   "89c7e96d4fd4932b18e19db01c3316cb5167baa6240c9783905f3252b66e3143",
         intel: "fc899d945c8208a535ff55e5b80c42cf5d6581eefe128204d738c12fd7362107"

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

  # No zap stanza required
end
