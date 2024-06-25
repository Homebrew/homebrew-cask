cask "font-xits" do
  version "1.302"
  sha256 "a396dfddde7da50ce82cae530775ab522b1d33f87ca8211634535b6325a09c2b"

  url "https://github.com/khaledhosny/xits/archive/refs/tags/v#{version}.tar.gz"
  name "XITS"
  homepage "https://github.com/khaledhosny/xits"

  deprecate! date: "2023-12-17", because: :discontinued

  font "xits-#{version}/xits-bold.otf"
  font "xits-#{version}/xits-bolditalic.otf"
  font "xits-#{version}/xits-italic.otf"
  font "xits-#{version}/xits-regular.otf"
  font "xits-#{version}/xitsmath-bold.otf"
  font "xits-#{version}/xitsmath-regular.otf"

  # No zap stanza required
end
