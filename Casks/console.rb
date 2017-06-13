cask 'console' do
  version '0.1.0'
  sha256 '83bf53d860f24e0dce2f400db2d564462ecacb9b90a5550014b38088c76a2642'

  url "https://github.com/macmade/Console/releases/download/#{version}/Console.app.zip"
  appcast 'https://github.com/macmade/Console/releases.atom',
          checkpoint: '8b49c744334f3257824f87fd5fc27abb2473320f935e841681a9fe26683e1f0e'
  name 'Console'
  homepage 'https://github.com/macmade/Console'

  depends_on macos: '>= :el_capitan'

  app 'Console.app'
end
