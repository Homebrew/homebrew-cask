cask 'metaz' do
  version '1.0.beta-94'
  sha256 '738506d0cdba73650563bb1d9078e4d60ccffab926f05b58504d0715fc50ebb7'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
