cask "gama" do
  arch = Hardware::CPU.intel? ? "" : "_M1"

  version "1.8.2-RC2"

  if Hardware::CPU.intel?
    sha256 "64557bc82b5557dfde221d88f81bbba46e5ac1b66f1538561b72dd863578b6aa"
  else
    sha256 "d49eeb2122f171b4b0dd85777e20d1c5cd169a145bf128bdd5e5d269e21a197a"
  end

  url "https://github.com/gama-platform/gama.resources/releases/download/#{version}/GAMA_#{version}_MacOS#{arch}.dmg",
      verified: "github.com/gama-platform/gama.resources/"
  name "GAMA Platform"
  desc "IDE for building spatially explicit agent-based simulations"
  homepage "https://gama-platform.org/"

  livecheck do
    cask "gama-jdk"
  end

  conflicts_with cask: "gama-jdk"

  app "Gama.app"

  caveats do
    depends_on_java "17"
  end
end
