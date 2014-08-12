class Findings < Cask
  version 'latest'
  sha256 :no_check

  url 'http://downloads.findingsapp.com/findings'
  appcast 'http://downloads.findingsapp.com/appcast.xml'
  homepage 'http://findingsapp.com'

  link 'Findings.app'
end
