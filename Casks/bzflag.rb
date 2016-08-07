cask 'bzflag' do
  version '2.4.6'
  sha256 '718b520498294e0083dcff7faf277dcda8fa512a11bf2b852ffc7617f01bfb3e'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-MacOSX.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: 'f6f94afd10f51ff5510ceb84f4d04c707e5a74aa722f0443267d694c9a7c32c0'
  name 'BZFlag'
  homepage 'https://bzflag.org/'
  license :gpl

  app "BZFlag-#{version}.app"
end
