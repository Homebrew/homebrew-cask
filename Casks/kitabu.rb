cask 'kitabu' do
  version :latest
  sha256 :no_check

  url 'https://www.kitabu.me/files/Kitabu.zip'
  name 'Kitabu'
  homepage 'https://www.kitabu.me/'

  depends_on macos: '>= :sierra'

  app 'Kitabu.app'
end
