cask 'liteide' do
  version '32.2'
  sha256 'e879e227e29503d6af16101031fb0039fb56688366b608b4b5c520fbfe0441d4'

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'bebcfa57d03a1dc5a101bc57f6a4c449157dbc84d550bd85165e6c21c2505fb6'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
