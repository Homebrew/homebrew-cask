cask 'overture' do
  version '2.6.2'
  sha256 'a1fba04c86c284eea65a7a92313ffa659c042339b1bab5fbb50027bcab61047a'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '3e36e148a87639aa8ecbba654e1e1c8fb1b69337a69c5193041a654bb91168d5'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app "Overture-#{version}-macosx.cocoa.x86_64/Overture.app"
end
