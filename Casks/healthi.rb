cask 'healthi' do
  version '1.0.3'
  sha256 '06152346caae837a2fab3ab905de40e1919a88de73838c35bbcc5a31cf073dd4'

  url "https://github.com/pablopunk/healthi/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi/releases.atom',
          checkpoint: '3983b08ab2502f69485120bf646f9f5fa228cdd5e55f28c076681b3175af0295'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi'

  app 'healthi.app'
end
