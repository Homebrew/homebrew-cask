cask :v1 => 'cumulus' do
  version '0.4.0'
  sha256 '87a638b3796ca066dc39218e476351a483156170b809c25f7a94acf0f13d7689'

  url 'https://github.com/gillesdemey/Cumulus/releases/download/v0.4.0/Cumulus-0.4.0-osx.zip'
  name 'Cumulus'
  homepage 'http://gillesdemey.github.io/Cumulus'
  license :unknown

  app 'Cumulus.app'
end
