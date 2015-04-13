cask :v1 => 'anybar' do
  version '0.1.3'
  sha256 'aaf23b72b682fe4db6ea19908a2e0ffceb54c33aa1c551c5de833c56bca74ef6'

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast 'https://github.com/tonsky/AnyBar/releases.atom'
  name 'AnyBar'
  homepage 'https://github.com/tonsky/AnyBar'
  license :eclipse

  app 'AnyBar.app'
end
