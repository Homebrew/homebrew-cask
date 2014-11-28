cask :v1 => 'oclint' do
  version '0.7'
  sha256 '697ea08fc7cd8945a40ed95e6f3d40c18ed15968b7b0c0519dce9d14873633a9'

  url "http://archives.oclint.org/releases/#{version}/oclint-#{version}-x86_64-apple-darwin-10.tar.gz"
  homepage 'http://oclint.org'
  license :unknown

  binary "oclint-#{version}-x86_64-apple-darwin-10/bin/oclint"
  binary "oclint-#{version}-x86_64-apple-darwin-10/bin/oclint-json-compilation-database"
  binary "oclint-#{version}-x86_64-apple-darwin-10/bin/oclint-xcodebuild"
  binary "oclint-#{version}-x86_64-apple-darwin-10/lib/oclint", :target => '/usr/local/lib/oclint'
  caveats do
    files_in_usr_local
  end
end
