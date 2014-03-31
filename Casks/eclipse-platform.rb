class EclipsePlatform < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/eclipse/downloads/drops4/R-4.3.2-201402211700/eclipse-SDK-4.3.2-macosx-cocoa-x86_64.tar.gz'
    sha256 '9a77cc829aa1174a98abd180a35f628d72620f2a961e21fa12d3a88e48c6ce71'
  else
    url 'http://download.eclipse.org/eclipse/downloads/drops4/R-4.3.2-201402211700/eclipse-SDK-4.3.2-macosx-cocoa.tar.gz'
    sha256 '1d28a21cb106f16ce238fe947243243193adedd051b22ea528b3c7bf6e842cc0'
  end
  version '4.3.2'
  homepage 'http://eclipse.org'
  link 'eclipse/Eclipse.app'
end
