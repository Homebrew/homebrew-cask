cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.20"
  sha256 arm:   "e0e363c8f7b48f0dad54deabd1dc462a300ab740226e9eb2c091edbd2e05bd4a",
         intel: "2e12d8f64b93b30702e38ddae4bfb063b9c73888599fa0aac8a5aa99f8d766de"

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>\s*RAR\s+for\s+macOS.*?v?(\d+(:?\.\d+)+)\s*</i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  # No zap stanza required
end
