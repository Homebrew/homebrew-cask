cask 'numi' do
  version '3.16,129:1499870033'
  sha256 'cafcf48855d7ee0fcfdb88d45e213480dc6bdddd6c5f2de3e3b96cf5c403cdd2'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: 'feb8849c1202797c06d76a39c96f5bea4eeb4b79533f79bab0965464665ac6cf'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
