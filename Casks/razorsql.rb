cask 'razorsql' do
  version '9.0.9'
  sha256 '95fefa4498725539a6fa9f136cdd3894b6aba622135dd67d49e1df670ba927df'

  # s3.dualstack.us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
