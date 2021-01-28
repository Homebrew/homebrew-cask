cask "digital" do
  version "0.26"
  sha256 "4d83b7b41ce94420058bf119ae2dee8ff4485e416f1ba0ffe0d1eaf6b47e9e77"

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
