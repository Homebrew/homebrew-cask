cask 'overture' do
  version '2.5.4'
  sha256 '8dc6b714ce3bc811e5f3c83bf689b164f7101956cf5a6a3615b4b1e87d94a8ef'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '45f8c70a788dd81c8c1938af50bca548c6b2f9c4f1d9af4358b0108e11820077'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app "Overture-#{version}-macosx.cocoa.x86_64/Overture.app"
end
