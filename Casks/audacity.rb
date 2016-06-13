cask 'audacity' do
  version '2.1.2'
  sha256 '2e4b7d608ecc0d2f79bf16663f085d383075e488f7d50bf7d74c0b69173defe7'

  # Current official URL as proposed on http://www.audacityteam.org/download/mac/
  url "http://www.fosshub.com/Audacity.html/audacity-macosx-ub-#{version}.dmg"
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  suite 'Audacity'

  zap delete: '~/Library/Application Support/audacity'
end
