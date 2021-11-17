cask "subsurface" do
  version "5.0.4"

  if MacOS.version <= :mojave
    sha256 "4a194ee98f97c0d15e8e99d0646e00ebfae67b34644d97fd3a77b05179042655"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  else
    sha256 "610c34fea09bb6759ed63db570e13b9118ab6306cd13f2fb78288b7c07d455cd"
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
