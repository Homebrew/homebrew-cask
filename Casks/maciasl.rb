cask 'maciasl' do
  version '1.4'
  sha256 '24c0dbaa9a13231b8c8e364ef0e6d60656718320ce69d8bb23aa5bc27e82e87d'

  url "https://downloads.sourceforge.net/maciasl/#{version}/MaciASL.zip"
  appcast 'https://sourceforge.net/projects/maciasl/rss'
  name 'MaciASL'
  homepage 'https://sourceforge.net/projects/maciasl/'

  app 'MaciASL.app'
end
