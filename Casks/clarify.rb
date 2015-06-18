cask :v1 => 'clarify' do
  version :latest
  sha256 :no_check

  url 'http://www.clarify-it.com/download/mac/Clarify.dmg'
  name 'Clarify'
  appcast 'http://www.bluemangolearning.com/download/clarify/2_0/auto_update/release/clarify_appcast.xml',
          :sha256 => '4e03cb35a628946e3ea21ba547be2488f792f74364198d365f8f69d9ce4c93cb'
  homepage 'http://www.clarify-it.com/'
  license :commercial

  app 'Clarify.app'
end
