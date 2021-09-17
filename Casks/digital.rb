cask "digital" do
  version "0.28"
  sha256 "a96509442cc7b6697e66c1420b9e42f91325e20f9f34cc13cbfd92cb9b90c70d"

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
