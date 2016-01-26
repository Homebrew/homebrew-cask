cask 'quickgeojson' do
  version '1.1'
  sha256 '48a30865f3183c086c9ac70003276e2356c2fd4468e8818b0b2ec5adb3366332'

  url "https://github.com/irees/quickgeojson/releases/download/v#{version}/quickgeojson.qlgenerator.zip"
  appcast 'https://github.com/irees/quickgeojson/releases.atom',
          checkpoint: 'b030a58b367e52841dd5817d8c53ca657efd5789933fb97a405690c74a374258'
  name 'quickgeojson'
  homepage 'https://github.com/irees/quickgeojson'
  license :bsd

  qlplugin 'quickgeojson.qlgenerator'
end
