cask 'shiori' do
  version '1.1.0'
  sha256 '0496885a3f738681184c28e61fe134621a831af3c8f457784e9da72e43eae94d'

  url "https://aki-null.net/shiori/release/Shiori_#{version}.zip"
  appcast 'https://aki-null.net/shiori/appcast.xml',
          checkpoint: 'b74ab222a197cf6ffd5eb05df85f89ba04c699e1dcf7c639a7d8070da1fd3cfd'
  name 'Shiori'
  homepage 'https://aki-null.net/shiori/'

  app 'Shiori.app'
end
