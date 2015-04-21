cask :v1 => 'cmpl' do
  version '1.10.0'
  sha256 'f893ca2537d971682df9a4a08d34505732b40f58ee58037ad4fe736607d8953e'

  url "http://www.coliop.org/_download/Cmpl-#{version.gsub('.','-')}-osx.tar.gz"
  name 'CMPL'
  homepage 'https://www.coliop.org/'
  license :gpl

  # linking into ~/Applications breaks Cmpl, due to hardcoded paths
  suite 'Cmpl', :target => '/Applications/Cmpl'

  binary 'Cmpl/bin/cmpl'
  binary 'Cmpl/coliop'
  binary 'Cmpl/pyCmpl/scripts/Unix/cmplServer'
  binary 'Cmpl/pyCmpl/scripts/Unix/pyCmpl'

  postflight do
    system '/bin/rm', '-f', '--', "#{staged_path}/Cmpl/install", "#{staged_path}/Cmpl/deinstall"
  end
end
