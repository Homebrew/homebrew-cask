cask 'qlplayground' do
  version '0.2'
  sha256 '40487c1351b27a939d6383e359eea73c1a0a6b7fee00247f6954dae32540d1db'

  url "https://github.com/norio-nomura/qlplayground/releases/download/#{version}/qlplayground.qlgenerator-#{version}.zip"
  appcast 'https://github.com/norio-nomura/qlplayground/releases.atom',
          checkpoint: 'e5ee7b5098fe9d72bcdc8b6e36d2fb43c340c7c5a72e4af0b52c17138c9c21a3'
  name 'qlplayground'
  homepage 'https://github.com/norio-nomura/qlplayground'

  qlplugin 'qlplayground.qlgenerator'
end
