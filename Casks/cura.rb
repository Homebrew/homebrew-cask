cask :v1 => 'cura' do
  version '14.12'
  sha256 '999db9265c6a6f96dfe015cdd4e87f42e4fa24b3f33549f6195fabe3bc9c1aa9'

  url "http://software.ultimaker.com/current/Cura-#{version}-MacOS.dmg"
  homepage 'http://daid.github.com/Cura/'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
