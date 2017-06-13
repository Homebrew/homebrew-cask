cask 'quickgeojson' do
  version '1.1'
  sha256 '48a30865f3183c086c9ac70003276e2356c2fd4468e8818b0b2ec5adb3366332'

  url "https://github.com/irees/quickgeojson/releases/download/v#{version}/quickgeojson.qlgenerator.zip"
  appcast 'https://github.com/irees/quickgeojson/releases.atom',
          checkpoint: 'e24e0416b10f16068cb4fa438875bd94db1c73bd3b663fc504b7231f308ec96a'
  name 'quickgeojson'
  homepage 'https://github.com/irees/quickgeojson'

  qlplugin 'quickgeojson.qlgenerator'
end
