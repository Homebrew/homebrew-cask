cask 'overture' do
  version '2.4.4'
  sha256 '112b331af0aa818d03a2605971923d7f403d5f0f32f81348e5c51beaac8929d0'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '4f99d29cab642706752ca52eb86112da4e5b84f2da4d45d061c58d05bc84f66c'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app 'Overture.app'
end
