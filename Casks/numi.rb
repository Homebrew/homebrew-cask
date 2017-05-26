cask 'numi' do
  version '3.15,109:1495727941'
  sha256 '23582ee171ab9cc3a89fbfc18fafd6ec6e1046a7476a1de3816b5928551afedd'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: 'f8996449e00cca07caaac815bfa09e0af2e3bf6411f49d2ad369fa9946283b70'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
