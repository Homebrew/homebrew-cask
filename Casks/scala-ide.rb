cask :v1 => 'scala-ide' do
  version '3.0.4'

  if Hardware::CPU.is_32_bit?
    sha256 '01448e95f645955c0ab5e3461bc2a44104c01fcfb7f7355d317b1d6de11d2218'
    url "http://downloads.typesafe.com/scalaide-pack/#{version}.vfinal-211-20140723/scala-SDK-#{version}-2.11-2.11-macosx.cocoa.x86.zip"
  else
    sha256 'a631e31a53bd7bda61ec579fe8013c7a7e22ab7e947e726cdc9efbe45a10bb3e'
    url "http://downloads.typesafe.com/scalaide-pack/#{version}.vfinal-211-20140723/scala-SDK-#{version}-2.11-2.11-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
