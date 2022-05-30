cask "simply-fortran" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if MacOS.version <= :big_sur
    version "3.24.3735"

    sha256 "1b854b1bf5d982d43385cea735b0112ffa17f900e2ed8e42da1c01a9df5ca804"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]\.legacy\.dmg/i)
    end
  elsif Hardware::CPU.intel?
    version "3.24.3734"
    sha256 "b4913da2ef5ff4c962f29ed897c9afcb1cbcad7dee0647683227ada899b965a2"
  else
    version "3.24.3735"
    sha256 "c548c5911b5e23699bcfee2756da5d8680f8654a4833437542524e6cc2eb992a"
  end

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-#{arch}.dmg"
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Simply Fortran.app"
end
