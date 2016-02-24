cask 'fastscripts' do
  version '2.6.10'
  sha256 '82cd7702eb6f858c1ebb657af02c1e1c9881790e12f66707733b1292c5b3265c'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: '44643e3750e319d38302eff95ecfa7926d7bd18216626db5f90d9432ef8e121a'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'
  license :freemium

  app 'FastScripts.app'
end
