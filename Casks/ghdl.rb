cask "ghdl" do
  version "0.37"
  sha256 "cb870085dd55167eda162b2d8b0020b30574b47fa8f8dfc7a1fd6aa3eb32ee91"

  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-#{version}-macosx-mcode.tgz"
  name "ghdl"
  homepage "https://github.com/ghdl/ghdl/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/ghdl"
end
