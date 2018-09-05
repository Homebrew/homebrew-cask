cask 'overture' do
  version '2.6.2'
  sha256 'a1fba04c86c284eea65a7a92313ffa659c042339b1bab5fbb50027bcab61047a'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app "Overture-#{version}-macosx.cocoa.x86_64/Overture.app"
end
