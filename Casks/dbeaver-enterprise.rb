cask :v1 => 'dbeaver-enterprise' do
  version '3.1.1'

  if Hardware::CPU.is_64_bit?
    sha256 '27564968a4fd27dcaca5a9639cd787f63f006cab844017c7d094f922d506922d'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  else
    sha256 '692bf7ab300f0876ab3dac996e61f0b7c367db307c8190754fbf798dbb38daeb'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
