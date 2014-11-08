class RedcineXPro < Cask
  version :latest
  sha256 :no_check

  url 'http://s3.amazonaws.com/red_3/downloads/software/rcx/REDCINE-X_PRO_Build_31_OSX.zip'
  homepage 'https://www.red.com/'
  license :commercial

  pkg 'REDCINE-X_PRO_Build_31.pkg'
end
