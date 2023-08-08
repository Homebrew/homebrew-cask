cask "rar" do
  arch arm: "arm", intel: "x64"

  version "6.23"
  sha256 arm:   "574410f00a90483a585872c8b484d379f4aeefe6e2f4256966c5d98cbf6c43f0",
         intel: "afebcd94a9d3457aa14d883a8ff7c3b5356cf0fd105f2d53abfa33ac3d382986"

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
