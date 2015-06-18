cask :v1 => 'moneyguru' do
  version '2.8.2'
  sha256 '65b8df411330593462fc0eb8377115cc0709c0e499af1876fda0baf2a0bc03f0'

  url "http://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  name 'moneyGuru'
  appcast 'http://www.hardcoded.net/updates/moneyguru.appcast',
          :sha256 => '8fac60f13b4295126926b07d42812d43166bb92912d0743def66d71c7a9c515b'
  homepage 'http://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
