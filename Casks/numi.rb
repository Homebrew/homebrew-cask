cask 'numi' do
  version '3.0b14,90:1478584117'
  sha256 'a9452e903169d3a735db1af2eb684521ff0828a2f39f1d34acda2c8602762627'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: 'd05068f1767ef5c8bd6ea5435737c347755799881b15ef43a49a2429635fb6ad'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
