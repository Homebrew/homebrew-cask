cask "rar" do
  arch arm: "arm", intel: "x64"

  version "6.21"
  sha256 arm:   "391f4706546d793ceec90d3ab725d34ab153047170999e359147ef81f968813e",
         intel: "50dde0984b88a425f09b0dff97e29d6ab0182f2d43c46a0f00e0766df25319bc"

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
