cask 'healthi' do
  version '1.0.3'
  sha256 '06152346caae837a2fab3ab905de40e1919a88de73838c35bbcc5a31cf073dd4'

  url "https://github.com/pablopunk/healthi/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi/releases.atom',
          checkpoint: 'c91f3f15824cf2db2652de3b3ce3cf49f649e9fe678c29d1989886c55f6acfc2'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi'

  app 'healthi.app'
end
