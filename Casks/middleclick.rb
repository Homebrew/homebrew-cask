cask :v1 => 'middleclick' do
  version :latest
  sha256 :no_check

  if MacOS.release < :mountain_lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick.zip'
  elsif MacOS.release == :mountain_lion
    url 'http://clement.beffa.org/labs/downloads/MiddleClick_ml.zip'
  else
    url 'http://clement.beffa.org/labs/downloads/MiddleClick-maverick.zip'
  end
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  license :gpl

  app 'MiddleClick.app'
end
