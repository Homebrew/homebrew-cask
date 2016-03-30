cask 'scala-ide' do
  version '4.3.0'

  if Hardware::CPU.is_32_bit?
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150928/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86.zip"
    sha256 '3f43fef5ccb7f01b6e539c9270e26799361c006b3bfdba2140a9af8e8eafe197'
  else
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20151201/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86_64.zip"
    sha256 '3a7ad459cf2257da2cb8694b47c6fdb30ff3c3bcc020e03636fc49635a476ef6'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', target: 'Scala IDE.app'
end
