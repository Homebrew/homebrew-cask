cask 'cakebrew' do
  version '1.2.1'
  sha256 '73313ec778294161ff8d384a53cadd5d3da336209c13b1ddf931e735bd8f6aa9'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.zip"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: '7f833bba1fce6248bd9267fb1190f327871aaf06939af8c8b0c8a5f2a300e8d8'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
