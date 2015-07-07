cask :v1 => 'genymotion' do
  version '2.5.0'
  sha256 '47f9e56116150942bd920a09ce94c2ef0448741a4b11ec3b7dc2e4c2356bbff4'

  depends_on :cask => 'virtualbox'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
end
