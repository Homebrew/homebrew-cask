cask 'posterazor' do
  version '1.9.5'
  sha256 '1de827b9f44ffc16a23e4bdd9ff916290e81a1869ba2f5222c01a6f3d5551bd8'

  url "https://downloads.sourceforge.net/posterazor/PosteRazor-#{version}-OSX.dmg"
  appcast 'https://sourceforge.net/projects/posterazor/rss',
          checkpoint: '96d00043780b70c575c4c9a6895fa1b48c43d77ca2f65c1582d377a61a1b1574'
  name 'PosteRazor'
  homepage 'http://posterazor.sourceforge.net/'

  app 'PosteRazor.app'
end
