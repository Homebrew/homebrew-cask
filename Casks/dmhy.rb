cask 'dmhy' do
  version '2.0.1'
  sha256 '2edcbfca18df69a509231fa8a1fbce5ddaec34f164383e384310e418d2cc9567'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: 'f75dd5c49e4c77c3f34832bdead1ee7e2aa9b8be5b296e01582ef6cc8f78e771'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'

  app 'DMHY.app'
end
