cask :v1 => 'marble' do
  version '1.5.0'
  sha256 '6d1bf3e02c34ef0df0d5d0311d580bfae1d5259e3db45036163a5330dc139c04'

  url "https://files.kde.org/marble/downloads/MacOSX/Marble-#{version}.dmg"
  name 'Marble'
  homepage 'https://marble.kde.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Marble.app'
end
