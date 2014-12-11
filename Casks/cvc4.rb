cask :v1 => 'cvc4' do

  if MacOS.release <= :mountain_lion
    version '1.4'
    sha256 '436ebe16872a08bb41270cb1302c4258a7ccd187bf8e68ad8301300e49fb7718'
    
    # Mountain Lion package might work on older releases, per homepage
    url "http://cvc4.cs.nyu.edu/builds/macos/cvc4-#{version}.MacOs85.MountainLion.mpkg"

    pkg "cvc4-#{version}.MacOs85.MountainLion.mpkg"
  else
    version '1.4_0'
    sha256 'e3a0da4cf3187a58c9cc36e24623ac0ddbfd7ac18b389b7c8cca1a4d3fcbc03f'

    # Mavericks package appears to work on Yosemite
    url "http://cvc4.cs.nyu.edu/builds/macos/cvc4-#{version}.MacOs9.Mavericks.mpkg"

    pkg "cvc4-#{version}.MacOs9.Mavericks.mpkg"
  end

  homepage 'http://cvc4.cs.nyu.edu/'
  license :oss

  uninstall :pkgutil => 'org.macports.cvc4'
end
