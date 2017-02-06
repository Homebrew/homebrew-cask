cask 'bossman' do
  version '0.0.1'
  sha256 'ae33e81729aa9f014bbb02a295f0bbd5d145042f7e98f2d30baa5af8c8752f03'

  url "https://github.com/ianclarksmith/Bossman/releases/download/#{version}/Bossman.zip"
  appcast 'https://github.com/ianclarksmith/Bossman/releases.atom',
          checkpoint: 'fe7abd2bc606f39d8fb69029bd6bdc7e546598d1e7ceabd4c93496d6d52f72fb'
  name 'Bossman'
  homepage 'https://github.com/ianclarksmith/Bossman'

  depends_on formula: 'tmux'

  app 'Bossman.app'
end
