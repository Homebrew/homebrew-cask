cask :v1 => 'leech' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/leech'
  name 'Leech'
  appcast 'http://manytricks.com/leech/appcast.xml',
          :sha256 => '4c536f69c854fd09a2f0085c968ca9c17c8dbcaa1824b48ee4cc0cc29d17bb3d'
  homepage 'http://manytricks.com/leech/'
  license :commercial

  app 'Leech.app'
end
