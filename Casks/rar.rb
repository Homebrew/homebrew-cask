cask "rar" do
  arch = Hardware::CPU.intel? ? "x64" : "arm"

  version "6.10"

  if Hardware::CPU.intel?
    sha256 "40c119a9e6e1f7883d2d3333205f1c6c928080ea57f93bf6797d5996c2131eb2"
  else
    sha256 "db20d61544d5a569de718eac5f652a9105579db9f48ecc4ade78556a3ac24c1d"
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
