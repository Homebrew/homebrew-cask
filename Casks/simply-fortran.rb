cask "simply-fortran" do
  version "3.14.3349"

  if MacOS.version <= :mojave
    sha256 "ad06276a8454ab344df53c87213002d49ad0ea1cbe72e0622ebef936d2eaa8b7"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 "744732fb1646c97fd7eb02b766c56bd505beb2ff928601995665d84a20a622f0"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast "https://simplyfortran.com/download/?platform=macos",
          must_contain: version.major_minor
  name "Simply Fortran"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end
