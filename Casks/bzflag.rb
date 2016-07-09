cask 'bzflag' do
  version '2.4.6'
  sha256 '718b520498294e0083dcff7faf277dcda8fa512a11bf2b852ffc7617f01bfb3e'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-MacOSX.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: 'bd4ce43bdfdf707de0447f389812f8dd26ba0bba20701e32a59b216f9d5057ca'
  name 'BZFlag'
  homepage 'http://bzflag.org/'
  license :gpl

  app "BZFlag-#{version}.app"
end
