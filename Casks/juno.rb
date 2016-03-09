cask 'juno' do
  version '1.0.2'
  sha256 '5037c047d3f0af3eed992fdf2c34c3b4c85febedf2eb378d99ed62c6b7deae06'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://junolab.s3.amazonaws.com/release/#{version}/juno-mac-x64.dmg"
  name 'Juno'
  homepage 'http://junolab.org'
  license :gpl

  app 'Juno.app'
end
