cask 'prudent' do
  version '79.0.3945.88,19'
  sha256 '3ca9fd9cae0f287e171b99cd1a2c5cc03e4ffd81fedfa03a5a9cf2b8983e2cdf'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
