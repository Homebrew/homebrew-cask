cask :v1 => 'aegisub' do
  version '3.2.2'
  sha256 '3bc2ffed465408e4e79d6b550d49c5adeee7f480430837bb8e14f88e72042e2f'

  url "http://ftp.aegisub.org/pub/releases/Aegisub-#{version}.dmg"
  homepage 'http://www.aegisub.org/'
  license :oss

  app 'Aegisub.app'
end
