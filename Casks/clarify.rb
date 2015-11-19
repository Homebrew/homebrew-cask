cask :v1 => 'clarify' do
  version '2.0.5r4'
  sha256 '454bff1e655bd8aee1c5bcb3c85339b2d09a386637b1cdb0246ab849c6283654'

  url "http://files.clarify-it.com/v2/updaters/#{version}/Clarify.app.zip"
  name 'Clarify'
  appcast 'http://www.bluemangolearning.com/download/clarify/2_0/auto_update/release/clarify_appcast.xml',
          :sha256 => '4e03cb35a628946e3ea21ba547be2488f792f74364198d365f8f69d9ce4c93cb'
  homepage 'http://www.clarify-it.com/'
  license :commercial

  app 'Clarify.app'
end
