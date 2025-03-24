cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.11"
  sha256 arm:   "58988a9a0331dc03c8903bb97a446f509075ffe4a1e20a339a3022aeb447a680",
         intel: "6af686124587e4710724b35c4b933f361f59bf7f236884bd91fdaa292b1cf2fe"

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>\s*RAR\s+for\s+macOS.*?v?(\d+(:?\.\d+)+)\s*</i)
  end

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  # No zap stanza required
end
