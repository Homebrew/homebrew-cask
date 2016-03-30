cask 'cmpl' do
  version '1.10.1'
  sha256 '62367f5d08f802725216542f6d2482a5635cbefe7c2ca843059525d7077445d0'

  url "http://www.coliop.org/_download/Cmpl-#{version.gsub('.', '-')}-osx.zip"
  name 'CMPL'
  homepage 'http://www.coliop.org/'
  license :gpl

  # linking into ~/Applications breaks Cmpl, due to hardcoded paths
  suite 'Cmpl', target: '/Applications/Cmpl'
  binary 'Cmpl/bin/cmpl'
  binary 'Cmpl/coliop'
  binary 'Cmpl/pyCmpl/scripts/Unix/cmplServer'
  binary 'Cmpl/pyCmpl/scripts/Unix/pyCmpl'

  postflight do
    system '/bin/rm', '-f', '--', "#{staged_path}/Cmpl/install", "#{staged_path}/Cmpl/deinstall"
  end
end
