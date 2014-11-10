class Subler < Cask
  version '0.30'
  sha256 'd0ab279f640c06ca6163144f2e11462d243bfeba32b64d258e5823cfd9386a7c'

  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  homepage 'https://bitbucket.org/galad87/subler'
  license :oss

  app 'Subler.app'
end
