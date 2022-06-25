cask "gama" do
  arch = Hardware::CPU.intel? ? "" : "_M1"

  version "1.8.2-RC1"

  if Hardware::CPU.intel?
    sha256 "1695e73f4d333a72e77ce1b1b74e68bbb21428403c397b6d2628109bfbbd2225"
  else
    sha256 "caa594a482abc148fff5a0235a12b6ddf9809e8851a7acf08057e482c67650c4"
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
