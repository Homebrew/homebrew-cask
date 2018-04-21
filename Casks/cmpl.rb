cask 'cmpl' do
  version '1.12.0'
  sha256 '7e7598cbacc31e609013b533ee080a489acdbbe4e84d9423a0bdecedcc6da432'

  url "http://www.coliop.org/_download/Cmpl-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'http://www.coliop.org/download.html',
          checkpoint: '95517cd00d8ae7408ededa88884e7b26e9fd0f905eddc2b8b4b9655e1a4d9969'
  name 'CMPL'
  homepage 'http://www.coliop.org/'

  suite 'Cmpl'
  binary "#{appdir}/Cmpl/bin/cmpl"
  binary "#{appdir}/Cmpl/pyCmpl/scripts/Unix/cmplServer"
  binary "#{appdir}/Cmpl/pyCmpl/scripts/Unix/pyCmpl"
end
