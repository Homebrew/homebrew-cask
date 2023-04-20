cask "digital" do
  version "0.30"
  sha256 "17b780b8c95db7997973252a58e0928ad06517c6c0f0f79534cb5b0515734476"

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
