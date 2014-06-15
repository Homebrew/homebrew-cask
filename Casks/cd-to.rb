class CdTo < Cask
  version '2.5'
  sha256 '9abeeccd35fb92b7308239b84bf60d6bae68858857658295d879c5a5282e2a13'

  url "https://cdto.googlecode.com/files/cdto_#{version}_sign.zip"
  homepage 'http://code.google.com/p/cdto'

  link "cdto_#{version}_sign/cd to.app"
end
