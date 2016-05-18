cask 'dmhy' do
  version '1.5.5'
  sha256 '575f3ef717877fd21658e507a8bcdf66b2f8f69ef3843bd6e73bcd75e11e4316'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: '81921301307e10784b91b00b7abc470e505b7908c12cb9597063c405a208591a'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'
  license :mit

  app 'DMHY.app'
end
