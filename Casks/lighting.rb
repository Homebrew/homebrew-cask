cask 'lighting' do
  version '1.1.7'
  sha256 '8cab328133decacb8a608b034dae899e1105c20d97ec791ff089ddbbb0510d4f'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom',
          checkpoint: '8d2bc2228d99b89bad367d7a1abbbf545c5b270708f93087f15026d10c8ea7fb'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'

  app 'Lighting.app'
end
