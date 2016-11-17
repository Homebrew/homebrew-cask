cask 'overture' do
  version '2.4.2'
  sha256 '45bd0385b6848c6ed5e9c9cb41ce32a76a955983dba80217693c73c68e5be724'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '996dae8fa422e98647a590fa5960ab11e73036427485800b786394f11e77b6c1'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app 'Overture.app'
end
