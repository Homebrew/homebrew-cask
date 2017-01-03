cask 'aria-maestosa' do
  version '1.4.12'
  sha256 '177f8d7befa7330b82386fd55b9289213928220faa2565c948804579867569a8'

  url "https://downloads.sourceforge.net/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  appcast 'https://sourceforge.net/projects/ariamaestosa/rss',
          checkpoint: '477668fd1065310b682c7ced2a01f4be95af808290674d9598ff2895122cad3a'
  name 'Aria Maestosa'
  homepage 'http://ariamaestosa.sourceforge.net/'

  app "AriaMaestosa-#{version}/Aria Maestosa.app"
end
