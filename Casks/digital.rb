cask "digital" do
  version "0.29"
  sha256 "4d61e2776100ddfe3f8638886e5b33e3b99165eefefaf9ba5c9b9fad1f47f3a7"

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
