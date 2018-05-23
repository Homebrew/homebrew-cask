cask 'luyten' do
  version '0.5.3'
  sha256 '7caa0bf2debcdb61bf53c528c48dd97b533152fe6f86b0f57bf1f416dc5b7bc0'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: '25c5c57af0a8c3365a11c5a85aa2d137033e29c4119540dfafaaf155fabf8de0'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
