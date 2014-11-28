cask :v1 => 'prismatik' do
  version '5.11.1'
  sha256 '178ea51c143c2cb005199f5cfaf24695324b951ba98c55cec83c7882e6420903'

  url "https://github.com/woodenshark/Lightpack/releases/download/#{version}/Prismatik.#{version}.dmg"
  homepage 'http://lightpack.tv/'
  license :gpl

  app 'Prismatik.app'
end
