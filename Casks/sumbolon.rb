cask 'sumbolon' do
  version '1.0.5'
  sha256 '9127c381dc19916f91a834dca76b237d43a5fe0ca92a79a1c7ed0a8dd791692d'

  url "https://www.rwe-uk.com/uploads/updates/Sumbolon%20#{version}.zip"
  appcast 'https://www.rwe-uk.com/sparkle/sumbolon',
          checkpoint: '1ab26599d2ec9b77f21d2a90e9b251a2d2a451b59bb94d91e65ae093637d1cbf'
  name 'Sumbolon'
  homepage 'https://www.rwe-uk.com/app/sumbolon'
  license :commercial

  auto_updates true

  app 'Sumbolon.app'
end
