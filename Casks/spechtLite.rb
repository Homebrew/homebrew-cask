cask 'spechtlite' do
  version '0.4.9'
  sha256 '9b302e73adab8ae39e51fee0b16803fee67c92add0d6b50b676a5fce50bfc527'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
