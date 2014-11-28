cask :v1 => 'factor' do
  version '0.96'
  sha256 'bd5dca1393c444a9491ef0c70f48b94ae7e39712ea0748a061cd721d26e83c40'

  url "http://downloads.factorcode.org/releases/#{version}/factor-macosx-x86-64-#{version}.dmg"
  homepage 'http://factorcode.org/'
  license :unknown

  app 'factor/Factor.app'
end
