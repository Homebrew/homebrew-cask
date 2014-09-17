class Middleclick < Cask
  if MacOS.version < :mountain_lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick.zip'
  elsif MacOS.version == :mountain_lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick_ml.zip'
  else
    url 'http://clement.beffa.org/labs/downloads/MiddleClick-maverick.zip'
  end
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  version :latest
  sha256 :no_check
  app 'MiddleClick.app'
end
