cask :v1 => 'sococo' do
  version '3.2.7'
  sha256 '6772f2c2ef5c7b046612de408b79a71ed0936041fb9286785af69d862f653d1f'

  url "http://download.sococo.com/10069/Sococo_#{version.gsub('.','_')}_10069.dmg"
  homepage 'http://www.sococo.com'
  license :unknown

  app 'Sococo.app'
end
