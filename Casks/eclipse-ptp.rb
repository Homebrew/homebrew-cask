cask :v1 => 'eclipse-ptp' do
  version '4.4.2'

  if Hardware::CPU.is_32_bit?
    sha256 'fb911562252d666053c75b56420f53bb35e80cdb820ab323e866cca279650fcd'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR2/eclipse-parallel-luna-SR2-macosx-cocoa.tar.gz'
  else
    sha256 '03bfcd97156101c9763a2ccb189dc66a597c97c101ff345793cd07f7fc2dee3a'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR2/eclipse-parallel-luna-SR2-macosx-cocoa-x86_64.tar.gz'
  end

  name 'Eclipse'
  name 'Eclipse Parallel Tools Platform'
  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
