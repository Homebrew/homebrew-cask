cask 'cmpl' do
  version '1.10.1'
  sha256 '62367f5d08f802725216542f6d2482a5635cbefe7c2ca843059525d7077445d0'

  url "http://www.coliop.org/_download/Cmpl-#{version.gsub('.', '-')}-osx.zip"
  name 'CMPL'
  homepage 'http://www.coliop.org/'
  license :gpl

  suite 'Cmpl'
  binary "#{Hbc.appdir}/Cmpl/bin/cmpl"
  binary "#{Hbc.appdir}/Cmpl/coliop"
  binary "#{Hbc.appdir}/Cmpl/pyCmpl/scripts/Unix/cmplServer"
  binary "#{Hbc.appdir}/Cmpl/pyCmpl/scripts/Unix/pyCmpl"

  postflight do
    system '/bin/rm', '-f', '--', "#{Hbc.appdir}/Cmpl/install", "#{Hbc.appdir}/Cmpl/deinstall"
  end
end
