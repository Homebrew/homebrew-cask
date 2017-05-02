cask 'inklet' do
  version '2.0.3'
  sha256 '3215946ed73d6e9156c6e809def90dc181cb60c389f2f0ff1d5ed66cc5051d84'

  url "https://tenonedesign.com/apps/inklet/Inklet-#{version}.zip"
  appcast 'https://tenonedesign.com/apps/inklet/profileInfo2.php',
          checkpoint: 'cb9c08731198482d2bb5a0a3f7e934502dee7ab462ab546bf5414ab3317c8ce4'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'

  app 'Inklet.app'
end
