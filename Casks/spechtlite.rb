cask 'spechtlite' do
  version '0.10.0'
  sha256 '9a51860d215e36162f63696e5b6aa7f18cb18349a20e27bc93fcada2cfede7a9'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  appcast 'https://github.com/zhuhaow/SpechtLite/releases.atom',
          checkpoint: '7274c1852fa70b69b22773d238418b7171af0e3857193febae5ec3bdd4f691b0'
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
