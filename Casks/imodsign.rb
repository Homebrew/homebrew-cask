class Imodsign < Cask
  version :latest
  sha256 :no_check

  url 'https://imzdl.com/iModSign/iModSign.zip'
  homepage 'https://imzdl.com'
  license :closed

  app 'iModSign.app'
end
