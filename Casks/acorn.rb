cask 'acorn' do
  version '6.0.2'
  sha256 '4d738ed2df8d90677028cdafd221c85e583d7bc916474dad7b94f9713ce033a1'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'dc4f32f693746f7fa984b1fc9feab1d0871a252edfb4784b842b465ffffb4285'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
