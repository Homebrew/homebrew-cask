cask 'iridient-developer' do
  version '3.1.3'
  sha256 '7b28bfad2541e32b497a8816d489099189ec9b24dc9bfafa958ccd0cfbfb6208'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'http://www.iridientdigital.com/products/rawdeveloper_history.html',
          checkpoint: 'f24a13c9b396e3a8f5829c7c966fba130fa22e3977470288db10093941f64c3b'
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
