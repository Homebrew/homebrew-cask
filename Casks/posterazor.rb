cask 'posterazor' do
  version '1.9.5'
  sha256 '1de827b9f44ffc16a23e4bdd9ff916290e81a1869ba2f5222c01a6f3d5551bd8'

  # downloads.sourceforge.net/posterazor was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/posterazor/PosteRazor-#{version}-OSX.dmg"
  appcast 'https://sourceforge.net/projects/posterazor/rss'
  name 'PosteRazor'
  homepage 'https://posterazor.sourceforge.io/'

  app 'PosteRazor.app'
end
