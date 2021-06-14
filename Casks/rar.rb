cask "rar" do
  version "6.0.2"
  sha256 "6da67bd6f617206b36e5fecf274ba3a0652bb166519852e1bc32342a8564b6c8"

  url "https://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    strategy :page_match
    regex(%r{href=.*?/rarosx-(\d+(:?\.\d+)*)\.tar\.gz}i)
  end

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"
end
