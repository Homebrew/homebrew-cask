cask :v1 => 'moneyguru' do
  version '2.7.2'
  sha256 '9fd0f1c57a4a0ccc1dae75cf1408aa9f25c5219eb58b294933bcea3b82705d59'

  url "http://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/moneyguru/'
  license :unknown    # todo: improve this machine-generated value

  app 'moneyGuru.app'
end
