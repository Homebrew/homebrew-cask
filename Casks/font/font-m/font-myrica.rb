cask "font-myrica" do
  version "2.006.20150301"
  sha256 "a90eb9b79885f02ad9e0e752a0b979b699847be7de13dc3b6113658f006d12bd"

  url "https://github.com/tomokuni/Myrica/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/tomokuni/Myrica/"
  name "Myrica"
  homepage "https://myrica.estable.jp/"

  font "Myrica-#{version}/Myrica.TTC"

  # No zap stanza required
end
