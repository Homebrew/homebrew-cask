cask "gama-jdk" do
  arch = Hardware::CPU.intel? ? "" : "_M1"

  version "1.8.2-RC2"

  if Hardware::CPU.intel?
    sha256 "0d161a6aa13a3d40f1643d551b594cdd58d6ef3a81e10ea9ff2d9bc1070f21ac"
  else
    sha256 "c903608dd09cf511e721bceaa1f521e772a2ea9801eb135b182aa3b1a3053d88"
  end

  url "https://github.com/gama-platform/gama.resources/releases/download/#{version}/GAMA_#{version}_MacOS#{arch}_with_JDK.dmg",
      verified: "github.com/gama-platform/gama.resources/"
  name "GAMA Platform with embedded JDK"
  desc "IDE for building spatially explicit agent-based simulations"
  homepage "https://gama-platform.org/"

  livecheck do
    url "https://gama-platform.org/download"
    regex(/GAMA[._-]v?(\d+(?:.\d+)*(?:[._-]RC\d+))[._-]MacOS#{arch}[._-]with[._-]JDK\.dmg/i)
  end

  conflicts_with cask: "gama"

  app "Gama.app"
end
