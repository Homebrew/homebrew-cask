class Placeit < Cask
  version 'latest'
  sha256 :no_check

  url 'http://placeit-apps.s3.amazonaws.com/Placeit-Mac.zip'
  homepage 'https://placeit.net/'

  app 'Placeit.app'
end
