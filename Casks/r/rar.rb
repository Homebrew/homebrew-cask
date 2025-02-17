cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.10"
  sha256 arm:   "81b6c5ca75583d5b0e340e0683c045a7327fe08c8d8424ff286855d6f8ed2054",
         intel: "cd835c92bc4e02e82c34510d8cd4466859866856eb46fef78e911e4e6425a3c0"

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
