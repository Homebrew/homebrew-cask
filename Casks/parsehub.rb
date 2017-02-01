cask 'parsehub' do
  version :latest
  sha256 :no_check

  url 'https://www.parsehub.com/static/client/parsehub.dmg'
  name 'parsehub'
  homepage 'https://www.parsehub.com/'

  app 'ParseHub.app'
end
