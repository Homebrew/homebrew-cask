cask :v1 => 'cycling74-max' do
  version '7.0.4-150625'
  sha256 'e00be5bbef8085268aa0545a354074cf8181ca159e3fe30e1eb55d974a0df7a3'

  url "https://filepivot.appspot.com/projects/maxmspjitter/files/Max#{version.sub('-','_').gsub('.','')}.dmg"
  name 'Max'
  homepage 'https://cycling74.com/'
  license :commercial
  tags :vendor => 'Cycling ‘74'

  app 'Max.app'
end
