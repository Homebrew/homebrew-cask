cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.12"
  sha256 arm:   "95078e0f59ffd05ebe665a557e9d4d1c073156a2777d9167f6c420ee448a83c5",
         intel: "5b3a79233a5ce2eb0d95d0446f739909e3720724d325e828c5b0c3f0736708fa"

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
