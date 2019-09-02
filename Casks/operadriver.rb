cask 'operadriver' do
  version '2.40'
  sha256 '4ef7291b3aae0463d4155fb6938c72e3132684871d0e5fe7eb2c47931662eb3a'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
