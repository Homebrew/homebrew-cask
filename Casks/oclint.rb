cask 'oclint' do
  version '0.11,15.6.0'
  sha256 '804d7389d8631835fd4ceee845c5a6cc47062ffb10341ffcb421269c25182c0d'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: '2b9179b96d9caccfcbac1aca6d10b6dfb5aa176daf840800434b32c12277a17b'
  name 'OCLint'
  homepage 'http://oclint.org'

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: '/usr/local/lib/oclint'
  binary "oclint-#{version.before_comma}/include/c++", target: '/usr/local/include/c++'

  caveats do
    files_in_usr_local
  end
end
