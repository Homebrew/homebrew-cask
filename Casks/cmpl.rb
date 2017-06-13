cask 'cmpl' do
  version '1.11.0'
  sha256 'fbb54e6f69cb72d6e1ecdb12e2950ec7adc44a542aea1e748a7710c72c132dac'

  url "http://www.coliop.org/_download/Cmpl-#{version.dots_to_hyphens}-osx.tar.gz"
  appcast 'http://www.coliop.org/download.html',
          checkpoint: 'fce3e8cbdee735ffc9364e387753518f0781f10a71d13183c13ca1376acb4ac7'
  name 'CMPL'
  homepage 'http://www.coliop.org/'

  suite 'Cmpl'
  binary "#{appdir}/Cmpl/bin/cmpl"
  binary "#{appdir}/Cmpl/pyCmpl/scripts/Unix/cmplServer"
  binary "#{appdir}/Cmpl/pyCmpl/scripts/Unix/pyCmpl"
end
