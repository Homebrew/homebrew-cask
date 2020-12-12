cask "jasp" do
  version "0.14.0.0"

  if MacOS.version <= :mojave
    sha256 "f2ea3faec2de0afb218b52aae4dfed7c4f0521469091e67715ca22f28aa21583"

    url "https://static.jasp-stats.org/JASP-#{version}-preCatalina.dmg"
  else
    sha256 "2e6a750f0f23d6528b72792712a4290a957d3bc1be40c66b110ac741d55a13be"

    url "https://static.jasp-stats.org/JASP-#{version}-Catalina.dmg"
  end
  appcast "https://jasp-stats.org/download/",
          must_contain: version.sub(/(.0)+$/, "")
  name "JASP"
  homepage "https://jasp-stats.org/"

  depends_on macos: ">= :high_sierra"

  app "JASP.app"
end
