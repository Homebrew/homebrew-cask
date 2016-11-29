cask 'bitbar' do
  version '1.9.2'
  sha256 '9e317d58143f544ab3b2b35e4d0ef2f11b9578fe6872cec1415da961acb1aee4'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '983fa180d4b2708f1c9e7890886446c3ff4792c32b5b3ad9adbe5011f0ea5131'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'

  app 'BitBar.app'
end
