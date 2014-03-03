class Middleclick < Cask
  if MacOS.version == :snowleopard or MacOS.version == :lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick.zip'
  elsif MacOS.version == :mountainlion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick_ml.zip'
  else
    url 'http://clement.beffa.org/labs/downloads/MiddleClick-maverick.zip'
  end
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  version 'latest'
  no_checksum
  link 'MiddleClick.app'
end
