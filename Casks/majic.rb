cask 'majic' do
  version '1.0.4'
  sha256 'e415557c399ca592d1864405a0786d8b36070ee40f67a3be8f3ba2a04f89b2ad'

  url "http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip?v=#{version}"
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml',
          checkpoint: 'b43ae558ddde00ba3721cb3e28e97aadd7187642da9547421a1956f923cf7cda'
  name 'Majic'
  homepage 'http://erikhinterbichler.com/apps/majic/'

  app 'Majic.app'
end
