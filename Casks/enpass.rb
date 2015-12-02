cask :v1 => 'enpass' do
  version '5.0.2'
  sha256 '553702000415aad0e682514a4d66f2424f55d99796389c738a3ecd671efd8c60'

  # sinew.in is the official download host per the vendor homepage
  url "http://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://enpass.io'
  license :gratis

  app 'Enpass.app'

  depends_on :macos => '>= :mountain_lion'
end
