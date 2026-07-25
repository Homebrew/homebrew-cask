cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.23"
  sha256 arm:   "68b393c000758d477fde43c955ff7542f12f76f3f5e87cdda923152fc791bd4d",
         intel: "da1fb3c3d7748136c9b369b683d574b372cb1ed049a634a81f85d93918346d8f"

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
