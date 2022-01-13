cask "subsurface" do
  version "5.0.5"

  if MacOS.version <= :mojave
    sha256 "4a194ee98f97c0d15e8e99d0646e00ebfae67b34644d97fd3a77b05179042655"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  else
    sha256 "b80919d25d6a998df20064032d7fc06661cbd2aedbf0a024a2357178897f7bf9"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.15+11.0.dmg"
  end

  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface.github.io/download/"
    strategy :page_match
    regex(%r{href=.*?/Subsurface-(\d+(?:\.\d+)*)-10\.15\+11\.0\.dmg}i)
  end

  app "Subsurface.app"
end
