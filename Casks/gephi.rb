cask 'gephi' do
  version '0.9.2'
  sha256 'e83641108bcab4326526293acf2da48ac107c95b811d7f23e1fc1c621489f097'

  # github.com/gephi/gephi was verified as official when first introduced to the cask
  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg"
  appcast 'https://github.com/gephi/gephi/releases.atom'
  name 'Gephi'
  homepage 'https://gephi.org/'

  app 'Gephi.app'
end
