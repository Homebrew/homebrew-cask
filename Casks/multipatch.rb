cask 'multipatch' do
  version '1.6'
  sha256 '608e745c6672b0fa8119d4e8e4e9585f72adc958d5c2632ae6fbd7ad1666421a'

  url "http://projects.sappharad.com/tools/multipatch#{version.no_dots}.zip"
  name 'MultiPatch'
  homepage 'http://projects.sappharad.com/tools/multipatch.html'

  app 'MultiPatch/MultiPatch.app'
end
