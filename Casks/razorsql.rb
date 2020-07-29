cask 'razorsql' do
  version '9.1.2'
  sha256 '5d2edd3eb8e099b935ab9f692334587272e5c81440404a6e451b1317a68b2548'

  # s3.dualstack.us-east-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
