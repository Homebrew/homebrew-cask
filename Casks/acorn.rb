cask 'acorn' do
  version '6.1.1'
  sha256 'd23f311dde006a201c75ea6bd92ede665edb13d2f69104cf5d27f7256f6e854c'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'e7ddc66a889b9ebb3e2905354717ab971219a4945ecd8800cbcfc55e6e754c02'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
