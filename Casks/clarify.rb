cask 'clarify' do
  version '2.0.5r4'
  sha256 '454bff1e655bd8aee1c5bcb3c85339b2d09a386637b1cdb0246ab849c6283654'

  url "http://files.clarify-it.com/v#{version.major}/updaters/#{version}/Clarify.app.zip"
  appcast 'http://www.bluemangolearning.com/download/clarify/2_0/auto_update/release/clarify_appcast.xml',
          :sha256 => 'a00fef4fcfea2fc544d10b47553f7c69524afd0b8be165d2373477e016811e3e'
  name 'Clarify'
  homepage 'http://www.clarify-it.com/'
  license :commercial

  app 'Clarify.app'
end
