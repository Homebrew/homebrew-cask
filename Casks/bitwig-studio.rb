cask 'bitwig-studio' do
  version '1.3.13'
  sha256 '1b83cbe5b52b72d39c719491a53ae98857e8d6a14d75dfd3f1c75b173e4b267a'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'

  app 'Bitwig Studio.app'
end
