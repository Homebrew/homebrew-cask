cask :v1 => 'eclipse-platform' do
  version '4.4.1-201409250400'

  if Hardware::CPU.is_32_bit?
    sha256 '99d1f13d65a54c008905c0c0fd7c306c1cce1adc2208b8e0546c60b084f976dd'
    url "http://download.eclipse.org/eclipse/downloads/drops#{version.to_i}/R-#{version}/eclipse-SDK-#{version.sub(%r{-.*},'')}-macosx-cocoa.tar.gz"
  else
    sha256 'a269e0f129ebaba6522b4a4d2cd07950b0634d44c353a2558106ca8289fc8463'
    url "http://download.eclipse.org/eclipse/downloads/drops#{version.to_i}/R-#{version}/eclipse-SDK-#{version.sub(%r{-.*},'')}-macosx-cocoa-x86_64.tar.gz"
  end

  homepage 'http://eclipse.org'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
