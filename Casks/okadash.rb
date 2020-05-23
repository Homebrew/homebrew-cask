cask 'okadash' do
  version '1.8.0'
  sha256 '063c70ba0419a3d0f6509ba408fa041589f40a9a10377ea18fa526046df5e6f6'

  url "https://github.com/konoyono/okadash/releases/download/#{version}/okadash-#{version}-mac.zip"
  appcast 'https://github.com/konoyono/okadash/releases.atom'
  name 'okadash'
  homepage 'https://github.com/konoyono/okadash'

  app 'okadash.app'
end
