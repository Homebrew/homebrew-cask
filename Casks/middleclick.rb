cask :v1 => 'middleclick' do
  version :latest
  sha256 :no_check

  if MacOS.version < :mountain_lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick.zip'
  elsif MacOS.version == :mountain_lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick_ml.zip'
  else
    url 'http://clement.beffa.org/labs/downloads/MiddleClick-maverick.zip'
  end
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  license :unknown    # todo: improve this machine-generated value

  app 'MiddleClick.app'
end
