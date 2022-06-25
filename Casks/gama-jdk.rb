cask "gama-jdk" do
  arch = Hardware::CPU.intel? ? "" : "_M1"

  version "1.8.2-RC1"

  if Hardware::CPU.intel?
    sha256 "d77d43f541e7d5c5c92eb7cf0f3aadad8b6e2529f42962ddc9e478e5fbd4bde9"
  else
    sha256 "df0be092684f34a0049821ddf8855aed7813f70efcf7639fdb456992d0b4b7ae"
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
