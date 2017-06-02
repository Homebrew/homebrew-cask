cask 'numi' do
  version '3.15.2,122:1496059169'
  sha256 '16d6c2c0b8879d44217f0154f7cf5152b286c4c4a1049f9dbee76946719407b2'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: 'c36849ccf43d30f885d718ad155168bc999023253585672d1be1b5795e48236c'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
