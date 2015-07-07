cask :v1 => 'spillo' do
  version '1.5.5'
  sha256 '3f0c440b0b04c5750fe2bee710f225025119798ca1754bae50ecff0fae0c78f8'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  name 'Spillo'
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          :sha256 => '6d70f8d8baba70966929c8d6254fb73550e7af4dca3a7c4f3f207b4067d0d4e4'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
