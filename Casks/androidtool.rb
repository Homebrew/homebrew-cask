cask 'androidtool' do
  version '1.62'
  sha256 'f40e480cc66eebae227026de7bb2c6321d28b4b60941b2123915b5462f00d41f'

  url "https://github.com/mortenjust/androidtool-mac/releases/download/#{version}/AndroidTool#{version.no_dots}.zip"
  appcast 'https://github.com/mortenjust/androidtool-mac/releases.atom',
          checkpoint: 'dd73f7f46e99ce17d881a45e3c0238509e0567b2f8491b4585f9c74f5fcae6f5'
  name 'AndroidTool'
  homepage 'https://github.com/mortenjust/androidtool-mac'
  license :apache

  app 'AndroidTool.app'
end
