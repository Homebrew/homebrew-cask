class Onepassword < Cask
  version '4.4.2'
  sha256 '2eb28589cf5cd27870f100324c9168fcfaf092bf52a59a42ed2dccde320a80f8'

  url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword'
  license :unknown

  app '1Password 4.app'
end
