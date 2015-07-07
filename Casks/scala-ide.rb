cask :v1 => 'scala-ide' do
  version '4.0.0'

  if Hardware::CPU.is_32_bit?
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150119/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86.zip"
    sha256 '2398c727bde5fe694516829735ad22731eee4793ec0d91864c5d507493ce4b4d'
  else
    # typesafe.com is the official download host per the vendor homepage
    url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-20150119/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86_64.zip"
    sha256 '79151623c1b5fd53b10a9361d872939937737dfa9708c60687098beef4f42159'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
