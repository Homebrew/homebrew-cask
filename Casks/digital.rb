cask "digital" do
  version "0.26.1"
  sha256 "063c03da56694e55d05c77a71f34c30934892b50ed6f8343e3651a4cd932218b"

  url "https://github.com/hneemann/Digital/releases/download/v#{version}/Digital.zip"
  name "Digital"
  desc "Logic designer and circuit simulator"
  homepage "https://github.com/hneemann/Digital"

  livecheck do
    url :url
    strategy :github_latest
  end

  suite "Digital"

  zap trash: "~/.digital.cfg"

  caveats do
    depends_on_java "8+"
  end
end
