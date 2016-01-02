cask 'oclint' do
  version '0.10.1'
  sha256 'e9111f1a79aac54af17f62c38be280bcefd54ba3cdc09091ef127d906abfac83'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-x86_64-darwin-15.0.0.tar.gz"
  name 'OCLint'
  homepage 'http://oclint.org'
  license :oss

  binary "oclint-#{version}/bin/oclint"
  binary "oclint-#{version}/bin/oclint-json-compilation-database"
  binary "oclint-#{version}/bin/oclint-xcodebuild"
  binary "oclint-#{version}/lib/oclint", :target => '/usr/local/lib/oclint'

  caveats do
    files_in_usr_local
  end
end
