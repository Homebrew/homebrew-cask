cask 'mojibar' do
  version '2.2.2'
  sha256 '50de1520e88c393b28560d321d596ce279094eb39ff451658131346d22a9848e'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: 'e33f7c268ba39988b426256954ef07f54165433a6835229278f4aafd87ed47c9'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
