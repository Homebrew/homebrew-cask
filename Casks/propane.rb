class Propane < Cask
  url 'https://propaneapp.com/appcast/Propane.zip'
  appcast 'http://propaneapp.com/appcast/release.xml'
  homepage 'http://propaneapp.com/'
  version 'latest'
  sha256 :no_check
  link 'Propane.app'
end
