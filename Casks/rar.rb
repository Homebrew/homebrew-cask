cask "rar" do
  arch = Hardware::CPU.intel? ? "x64" : "arm"

  version "6.11"

  if Hardware::CPU.intel?
    sha256 "c875b102c72a9cb2ab1bd0a5b1a8b2eb049bc95cf8829bcde808f28ab0a620a4"
  else
    sha256 "ab67c2e30dbfb49f86683dc44cf3fe5774800297652c382bdde13661c1114170"
  end

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
