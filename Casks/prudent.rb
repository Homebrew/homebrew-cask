cask 'prudent' do
  version '79.0.3945.88,16'
  sha256 'b7ab17d6915496ec06f264c82ea1da68990b223e795a0b0b4dc10788487af10c'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
