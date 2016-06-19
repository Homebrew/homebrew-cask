cask 'papers' do
  version '3.4.5,512'
  sha256 'dcaba19531a7954e9b8f396ec0587eab490aced7d51dfa5a7be146008b829ec3'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: '99c2b980d6909a50dc3d9656604f908c796507d6861805e8bf3fb04136abfe6a'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
