class Github < Cask
  url 'https://central.github.com/mac/latest'
  homepage 'http://mac.github.com'
  version 'latest'
  no_checksum
  link :app, 'GitHub.app'
end
