cask 'optimage' do
  version '1.1.2'
  sha256 'af07965ffde2bdd7b4245a789e01aa60e44b861f4c0ff726c83d9d6f58417f96'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml',
          checkpoint: '61d557bbd6b1a21e5588d5121dde01a7c94d16c0f4bbab4e866d2346188bf876'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
