cask 'max' do
  if MacOS.version <= :mojave
    version '0.9.1'
    sha256 '722bf714696d3d39329ba98ffddc9f117f8cc6863f71670507cd12f62a5e5f14'
    appcast 'https://sbooth.org/Max/appcast.xml'

    url "https://files.sbooth.org/Max-#{version}.tar.bz2"

    app "Max-#{version}/Max.app"
  else
    version '0.9.2b2'
    sha256 'f8f6c60bb79d186de7907500459f4391025bd77f5e2fad4e240cae34aaa027cd'

    url "https://files.sbooth.org/Max-#{version}.dmg"

    app 'Max.app'
  end

  name 'Max'
  homepage 'https://sbooth.org/Max/'

  zap trash: '~/Library/Preferences/org.sbooth.Max.plist'
end
