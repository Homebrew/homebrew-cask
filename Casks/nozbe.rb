cask 'nozbe' do
  version '3.10.0'
  sha256 'e168c265171a0bb2cb5639a0c43b3954696b7cb5fa9e706720fde087be0f96d3'

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  depends_on macos: '>= :sierra'

  app 'Nozbe.app'
end
