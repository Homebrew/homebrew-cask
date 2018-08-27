cask 'love' do
  version '11.1'
  sha256 '05b22ea15b830623b659d818cc97831479919e9d067f42b8103374128756738e'

  # bitbucket.org/rude/love was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macos.zip"
  name 'LÖVE'
  homepage 'https://love2d.org/'

  app 'love.app'
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
