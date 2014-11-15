cask :v1 => 'eaglefiler' do
  version '1.6.2'
  sha256 '0c16140443b863df4847da18ec3f22c86529ea0bcdf8d53b90702f4e49bcaa93'

  url "http://c-command.com/downloads/EagleFiler-#{version}.dmg"
  homepage 'http://c-command.com/eaglefiler/'
  license :unknown

  app 'EagleFiler.app'
end
