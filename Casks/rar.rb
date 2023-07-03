cask "rar" do
  arch arm: "arm", intel: "x64"

  version "6.22"
  sha256 arm:   "b4e70883b424a5c0743164e41dbefe6da544c20128a6049a26fa20ce6de51a54",
         intel: "b9319979fa219933b89772b5fd47ca1fb2435e8a18e4a09331bd582963d4f082"

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
