cask 'numi' do
  version '3.17,131:1500983122'
  sha256 'cd65462aa9a6441849dd93692fc7c28ccd646805969830acc301f001ad9235b2'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: '5e2dbe0540908141c5fb4b4334fc454d5e954639c266e3cad0418e48aca17ca6'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
