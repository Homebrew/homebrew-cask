cask 'clarify' do
  version '2.0.5r4'
  sha256 '454bff1e655bd8aee1c5bcb3c85339b2d09a386637b1cdb0246ab849c6283654'

  url "http://files.clarify-it.com/v#{version.major}/updaters/#{version}/Clarify.app.zip"
  appcast "https://www.bluemangolearning.com/download/clarify/#{version.major_minor.dots_to_underscores}/auto_update/release/clarify_appcast.xml",
          checkpoint: 'f2a5e10edb7f9d72167455e3629c0ffc516f0addafc71b40d8f1d1f822113ae9'
  name 'Clarify'
  homepage 'http://www.clarify-it.com/'

  app 'Clarify.app'
end
