cask :v1 => 'moneyguru' do
  version '2.8.2'
  sha256 '65b8df411330593462fc0eb8377115cc0709c0e499af1876fda0baf2a0bc03f0'

  url "http://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  name 'moneyGuru'
  homepage 'http://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
