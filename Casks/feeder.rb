cask :v1 => 'feeder' do
  version '3.0.3'
  sha256 'a45709c7eef61ffd62cc62c5c62191dc745e8b788c2d4899f3eaf13901fdb5e4'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => 'a61c4a2a01adea421f77e4b35ba14c71a4a0f85336f942cc10a1a03d60cfcd27'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
