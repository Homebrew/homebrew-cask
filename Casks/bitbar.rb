cask 'bitbar' do
  version '1.9.2'
  sha256 '9e317d58143f544ab3b2b35e4d0ef2f11b9578fe6872cec1415da961acb1aee4'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '81f326a088b7de085117dbe902fc78ef6ebf2a41e1c3f07c7837ec76cf8a6174'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'

  app 'BitBar.app'
end
