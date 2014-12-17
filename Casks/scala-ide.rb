cask :v1 => 'scala-ide' do
  version '4.0.0'

  if Hardware::CPU.is_32_bit?
    url "http://downloads.typesafe.com/scalaide-pack/#{version}.vfinal-luna-211-20141216/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86.zip"
    sha256 '9739c851260211de15f8535988e7937cd4bf6e2dcb74188eb7261cff4a46deab'
  else
    url "http://downloads.typesafe.com/scalaide-pack/#{version}.vfinal-luna-211-20141216/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86_64.zip"
    sha256 '721a01bbbf682a2e32c34fb33f0240c08a2f81a9b8e181d7bca2039e98635453'
  end

  name 'Scala IDE'
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
