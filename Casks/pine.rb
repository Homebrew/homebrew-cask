cask 'pine' do
  version '0.1.0'
  sha256 '046f2603f7e4dcdc7535c6a5652dbfbab5cbe93fa36ca161f8a8029b53770b76'

  url "https://github.com/lukakerr/pine/releases/download/#{version}/Pine-#{version}.zip"
  appcast 'https://github.com/lukakerr/pine/releases.atom'
  name 'Pine'
  homepage 'https://github.com/lukakerr/pine'

  depends_on macos: '>= :sierra'

  app 'Pine.app'

  zap trash: '~/Library/Caches/io.github.lukakerr.pine'
end
