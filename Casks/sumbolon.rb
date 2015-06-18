cask :v1 => 'sumbolon' do
  version '1.0.5'
  sha256 '9127c381dc19916f91a834dca76b237d43a5fe0ca92a79a1c7ed0a8dd791692d'

  url "http://www.rwe-uk.com/uploads/updates/Sumbolon%20#{version}.zip"
  name 'Sumbolon'
  appcast 'http://www.rwe-uk.com/sparkle/sumbolon',
          :sha256 => '3570d9e02c0145a825373c078dd60e80ea32dbc2b2019285a6023802320ba431'
  homepage 'http://www.rwe-uk.com/app/sumbolon'
  license :commercial

  app 'Sumbolon.app'
end
