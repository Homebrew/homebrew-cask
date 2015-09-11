cask :v1 => 'scala-ide' do
  version '4.1.0'

  if Hardware::CPU.is_32_bit?
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150704/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86.zip"
    sha256 'b8294874953176150913e91b5ca0728e123d5aaeb31a8df81f94b873ac666a78'
  else
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150704/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86_64.zip"
    sha256 '80b4056c96709c21c198cfbbe9b4014fa44b3a9c081ae233dd3b0fe9832a9c7a'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
