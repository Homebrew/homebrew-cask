cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.01"
  sha256 arm:   "0631091732b24693785cbe8a616ef2910712c6a178b58af674215fe742471f7f",
         intel: "d44c67543adee3dc16c01fc128ffcbf7175838cc7caa47997e639b27bc66e1d6"

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>s*RAR\s*for\s*macOS.*v?(\d+(:?\.\d+)+)[ "<]/i)
  end

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  # No zap stanza required
end
