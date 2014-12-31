cask :v1 => 'stepmania' do
  version '5beta4a'
  sha256 'a87148a15e8507080ae03e42b07b35bb601e622d63c142da8a08dcdb9f9e42cd'

  url 'https://github.com/stepmania/stepmania/releases/download/SM5-beta4a/StepMania-v5.0-beta-4a-mac.dmg'
  homepage 'http://www.stepmania.com/'
  license :mit

  app 'StepMania-v5.0-beta-4a/Stepmania.app'
end
