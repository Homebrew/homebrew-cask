cask 'oclint' do
  version '0.10.2'
  sha256 '908ff716be831f1842daf81f899d86b1ee56109656fc1b6ccd69f8806ffdb75c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-x86_64-darwin-15.2.0.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: '776ee0710ae369b0995578c4c0b28bf420012975b70703014fe69e943c481f46'
  name 'OCLint'
  homepage 'http://oclint.org'
  license :oss

  binary "oclint-#{version}/bin/oclint"
  binary "oclint-#{version}/bin/oclint-json-compilation-database"
  binary "oclint-#{version}/bin/oclint-xcodebuild"
  binary "oclint-#{version}/lib/oclint", target: '/usr/local/lib/oclint'

  caveats do
    files_in_usr_local
  end
end
