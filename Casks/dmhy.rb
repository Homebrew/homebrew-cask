cask 'dmhy' do
  version '2.0.1'
  sha256 '2edcbfca18df69a509231fa8a1fbce5ddaec34f164383e384310e418d2cc9567'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: 'd0279ab75946a7242807324ec03cb7220082bb007a84cfa3702a8b52de7876e9'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'

  app 'DMHY.app'
end
