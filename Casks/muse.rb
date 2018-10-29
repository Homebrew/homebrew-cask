cask 'muse' do
  version '4.1'
  sha256 '598ed1ed26f32e886029c30eb531803e8850d45083b488a3dae3b01c61645d3c'

  url "https://github.com/xzzz9097/Muse/releases/download/#{version}/Muse.app.zip"
  appcast 'https://github.com/xzzz9097/Muse/releases.atom'
  name 'Muse'
  homepage 'https://github.com/xzzz9097/Muse'

  app 'Muse.app'
end
