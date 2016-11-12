cask 'double-commander' do
  version '0.7.6-7176'
  sha256 '6f76aa97e21b49d7edbc26ae62b64400c8d108c6715c21ea2e9a225086ec547a'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '22584d3ce504431f02c66281edead0128ac02677aa737bffa19b81a5ffec728a'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  app 'Double Commander.app'
end
