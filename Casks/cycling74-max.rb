cask :v1 => 'cycling74-max' do
  version '7.0.3-150402'
  sha256 'c63616022a19e8aafe7c7036265599644b13f3ae640509ffe17a3c7c6953d55e'

  url "http://filepivot.appspot.com/projects/maxmspjitter/files/Max#{version.sub('-','_').gsub('.','')}.dmg"
  name 'Max'
  homepage 'https://cycling74.com/'
  license :commercial
  tags :vendor => 'Cycling ‘74'

  app 'Max.app'
end
