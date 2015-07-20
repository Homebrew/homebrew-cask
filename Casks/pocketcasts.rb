cask :v1 => 'pocketcasts' do
  version '1.1'
  sha256 '4cb676300da1737462f4d2e54604d3126f8072c3982fce5299cf9a18b651265a'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCasts#{version}.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PocketCasts.app'
end
