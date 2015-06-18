cask :v1 => 'oclint' do
  version '0.8.1'
  sha256 '68499fe4331b3ca2334a2884a8b3e89bba2ffa468a42a780df3dc73849c44939'

  url "http://archives.oclint.org/releases/#{version.sub(%r{\.\d+$},'')}/oclint-#{version}-x86_64-darwin-14.0.0.tar.gz"
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
