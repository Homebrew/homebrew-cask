cask :v1 => 'black-light' do
  version '2.0.1'
  sha256 '6f358e319427ddaf91343a05ffb662894502902875bd9b0703b17baaf0c30d10'

  url "https://littoral.michelf.ca/apps/black-light/black-light-#{version}.zip"
  homepage 'http://michelf.ca/projects/black-light'
  license :commercial

  app 'Black Light.app'
end
