cask 'sumbolon' do
  version '1.0.5'
  sha256 '9127c381dc19916f91a834dca76b237d43a5fe0ca92a79a1c7ed0a8dd791692d'

  url "https://www.rwe-uk.com/uploads/updates/Sumbolon%20#{version}.zip"
  appcast 'https://www.rwe-uk.com/sparkle/sumbolon',
          :checkpoint => '63e7da635dbf3d3da5fbf5489862d52cfd2febe3a2b1981b39b5f238bdcb99cd'
  name 'Sumbolon'
  homepage 'https://www.rwe-uk.com/app/sumbolon'
  license :commercial

  app 'Sumbolon.app'
end
