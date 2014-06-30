class Propane < Cask
  version 'latest'
  sha256 :no_check

  url 'https://propaneapp.com/appcast/Propane.zip'
  appcast 'http://propaneapp.com/appcast/release.xml'
  homepage 'http://propaneapp.com/'

  link 'Propane.app'
end
