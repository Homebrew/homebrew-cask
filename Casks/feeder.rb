cask :v1 => 'feeder' do
  version '3.1.1'
  sha256 'da95018445f457917f2bc81dc69097036111236a478dd85cfe9238bfd06057bb'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => 'efb2d92af1f8cc221654f06e9fe45ad2b6caa86e8a853c9ff24542ae4b95ab2e'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
