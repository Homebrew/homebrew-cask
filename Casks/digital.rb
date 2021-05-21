cask "digital" do
  version "0.27"
  sha256 "a93b9dd70ed5b051bf04aacc37f2794c3c3d17f214ab99f0c8f4a36e55bbe835"

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
