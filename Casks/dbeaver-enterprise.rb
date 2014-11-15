cask :v1 => 'dbeaver-enterprise' do
  version '3.0.1'

  if Hardware::CPU.is_32_bit?
    sha256 '69545ce3f28ca41bca4566bdc00cadf4cff3a749899e741d8160f164c8e450b0'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '5f82801dad7585a088a1cd0c6b50ad8633f584aac3655649c1d2c8f2203e079e'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :unknown

  app 'dbeaver/dbeaver.app'
end
