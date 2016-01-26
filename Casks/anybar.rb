cask 'anybar' do
  version '0.1.3'
  sha256 'aaf23b72b682fe4db6ea19908a2e0ffceb54c33aa1c551c5de833c56bca74ef6'

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast 'https://github.com/tonsky/AnyBar/releases.atom',
          checkpoint: 'c2decd7b28c47c41117ecfaba8fb40681e474900acca99219479ccb4d881b5b4'
  name 'AnyBar'
  homepage 'https://github.com/tonsky/AnyBar'
  license :eclipse

  app 'AnyBar.app'
end
