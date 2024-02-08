cask "rar" do
  arch arm: "arm", intel: "x64"

  version "6.24"
  sha256 arm:   "dabe335834fb5f0fc236f03ba0d12c19fad7243cc56b980db61201ff94d84795",
         intel: "e2f10d3cd7cca50b2db26f7ef3e8251cf2bd7c09439a71d66c21d6f87530497e"

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
