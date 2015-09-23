cask :v1 => 'scala-ide' do
  version '4.1.1'

  if Hardware::CPU.is_32_bit?
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150704/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86.zip"
    sha256 '1c538d15f7c9eff0e47a283993e13d769f7dbbaaff3900d4bae0e645eb16b722'
  else
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150704/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86_64.zip"
    sha256 '06b83b019dec56ec48b72a38e453cc5e8d315dd173203c99f55d853e1bc1dd56'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
