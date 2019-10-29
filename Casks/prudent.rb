cask 'prudent' do
  version '55.0.2883.87,12'
  sha256 'de9d5e55735010113e05e259a61f1aa5ca92112d76386131ac1bdd36907168f9'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
