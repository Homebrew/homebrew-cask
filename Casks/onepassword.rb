class Onepassword < Cask
  version '4.4.3'
  sha256 '6657fc9192b67dde63fa9f67b344dc3bc6b7ff3e501d3dbe0f5712a41d8ee428'

  url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword'
  license :unknown

  app '1Password 4.app'
end
