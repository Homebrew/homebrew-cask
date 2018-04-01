cask 'cutesdr' do
  version '1.20'
  sha256 'b666dc37dc7b866a044cfbce811a986c37576841ee5cb95796f9b14b50a71db2'

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/cutesdr/rss',
          checkpoint: '86dea7d6358236c7c6877071f55724ca61d94fef85c4569af0b3daf5828011d1'
  name 'CuteSDR'
  homepage 'https://sourceforge.net/projects/cutesdr/'

  app 'cutesdr.app'
end
