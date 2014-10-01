class Scilab < Cask
  version '5.5.0'
  sha256 '58ed168011296c680db12cd4f3a55359647318cd959a9e97b37881ff5e26d592'

  url "http://www.scilab.org/download/#{version}/scilab-#{version}-x86_64.dmg"
  homepage 'https://www.scilab.org'
  license :unknown

  app "scilab-#{version}.app"
end
