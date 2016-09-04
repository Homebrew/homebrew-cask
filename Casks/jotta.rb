cask 'jotta' do
  version :latest
  sha256 :no_check

  url 'https://www.jottacloud.com/update/jottacloud/release/jottacloud.dmg'
  name 'Jottacloud'
  homepage 'https://www.jottacloud.com/'
  license :closed

  app 'Jotta.app'
end
