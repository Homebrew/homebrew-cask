cask 'prudent' do
  version '79.0.3945.88,20'
  sha256 'e59778c5683cc2b648d962365f5879030f9a467f02b4d6d4bb6df2975d5af361'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
