cask 'buttercup' do
  version '0.18.2'
  sha256 '50363f92e9200348401730f7c77373ebdb4db784693ff98190cfddd6b947a4e7'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '3a9d8e91cfbd9a4402e807c0d3af5de29a18350ce750d02f98df826c505c9a7c'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
