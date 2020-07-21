cask 'razorsql' do
  version '9.1.4'
  sha256 '720534fc3112f5629435455ac3e79edeefa35e3cbd52ff28ebb5bc092d245db5'

  # s3.dualstack.us-east-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
