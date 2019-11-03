cask 'prudent' do
  version '55.0.2883.87,14'
  sha256 '7d14c3427abd289b6fd09a9f30f27d3925a02ad831879e7568068144ce3a8c43'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
