cask 'metashapepro' do
  version '1.5.5'
  sha256 '68898ba83da305f3e19cd0bd5be4225384fa8c9a6b5345543e6ee453c408973c'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
