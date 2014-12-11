cask :v1 => 'darktable' do
  version '1.6.0'
  sha256 'f45fda7a7ac9648f26687b1b51f258493c73da592248ab2f0fa4b9bc79f0f3b4'

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  homepage 'http://www.darktable.org/'
  license :oss

  app 'darktable.app'
end
