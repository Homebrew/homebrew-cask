cask :v1 => 'sumbolon' do
  version '1.0.5'
  sha256 '9127c381dc19916f91a834dca76b237d43a5fe0ca92a79a1c7ed0a8dd791692d'

  url "http://www.rwe-uk.com/uploads/updates/Sumbolon%20#{version}.zip"
  homepage 'http://www.rwe-uk.com/app/sumbolon'
  license :unknown    # todo: improve this machine-generated value

  app 'Sumbolon.app'
end
