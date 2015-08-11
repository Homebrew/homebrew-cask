cask :v1 => 'operachromiumdriver' do
  version '0.2.2'
  sha256 :no_check

  url 'https://github.com/operasoftware/operachromiumdriver/releases/download/v0.2.2/operadriver_mac64.zip'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'
  license :apache

  binary 'operadriver'
end
