cask 'droplr' do
  version :latest
  sha256 :no_check

  url 'https://droplr.com/homebrew'
  name 'Droplr'
  homepage 'https://droplr.com/'
  license :gratis

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
