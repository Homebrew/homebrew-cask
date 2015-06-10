cask :v1 => 'sococo' do
  version '3.2.7'
  sha256 '6772f2c2ef5c7b046612de408b79a71ed0936041fb9286785af69d862f653d1f'

  url "http://download.sococo.com/10069/Sococo_#{version.gsub('.','_')}_10069.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sococo.app'
end
