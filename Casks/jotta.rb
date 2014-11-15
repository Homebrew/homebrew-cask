cask :v1 => 'jotta' do
  version :latest
  sha256 :no_check

  url 'https://www.jottacloud.com/software/jottacloud/jottacloud.dmg'
  homepage 'https://www.jottacloud.com/'
  license :closed

  app 'Jotta.app'
end
