cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.22"
  sha256 arm:   "2fac12e8125056c8af8b6be9c487917638e57cf9f5ae1fe73a26b1049f9cd8cc",
         intel: "15d4c3d8a36c286ce51d353700c5102707fd9b32a8146d20495ad69a7c4cffa5"

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>\s*RAR\s+for\s+macOS.*?v?(\d+(:?\.\d+)+)\s*</i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  # No zap stanza required
end
