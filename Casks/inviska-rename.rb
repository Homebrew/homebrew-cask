cask 'inviska-rename' do
  version '11.0'
  sha256 '9407edb2e7bd98b184fee21cc143d9cfde1fda4f3ff5e0c0e8cfd4abfbf3fff8'

  url "https://www.inviska.com/files/rename/mac/Inviska_Rename-#{version}.tar.gz"
  appcast 'https://www.inviska.com/rename/'
  name 'Inviska Rename'
  homepage 'https://www.inviska.com/rename/'

  depends_on macos: '>= :sierra'

  app 'Inviska Rename.app'
end
