cask :v1 => 'dbeaver-community' do
  version '3.0.2'

  if Hardware::CPU.is_32_bit?
    sha256 'fa4b332756aaba3ee8bd2b07ef52b5b4dc5cb679ad8ac29a1f54d00f2c867bbf'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 'b32c6f5fb64f1bdeab9683b62b7a685e022ba7f61c00e4b04d7ef8e62c75d61d'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
