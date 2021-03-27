cask "jasp" do
  version "0.14.1.0"

  if MacOS.version <= :mojave
    sha256 "8fe3cf08058576e54c78e1d87a2cfe159dead894c26aca37fd6fa610a5fb3cf7"

    url "https://static.jasp-stats.org/JASP-#{version}-preCatalina.dmg"
  else
    sha256 "ea682a95e51f9f0cd3d92b49eac18831c38de1e03f90020321cfce3eba5a0ee6"

    url "https://static.jasp-stats.org/JASP-#{version}-postMojave.dmg"
  end
  appcast "https://jasp-stats.org/download/",
          must_contain: version.sub(/(.0)+$/, "")
  name "JASP"
  homepage "https://jasp-stats.org/"

  depends_on macos: ">= :high_sierra"

  app "JASP.app"
end
