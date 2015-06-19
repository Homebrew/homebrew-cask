cask :v1 => 'sococo' do
  version '3.5.9_13089'
  sha256 '5630d397ae3816a965114abf299a594c972773b9de06f21b8b9f9d57d6f1dba6'

  url "http://download.sococo.com/#{version.to_f}/Sococo_#{version.gsub('.','_')}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'
  license :freemium

  app 'Sococo.app'
end
