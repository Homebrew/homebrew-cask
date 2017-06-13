cask 'bitbar' do
  version '1.9.2'
  sha256 '9e317d58143f544ab3b2b35e4d0ef2f11b9578fe6872cec1415da961acb1aee4'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '8bd4ba29559d382ffd9b98ade89882b74f40ce8207ea94253507e901aeb5f502'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'

  app 'BitBar.app'
end
