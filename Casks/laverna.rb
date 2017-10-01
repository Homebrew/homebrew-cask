cask 'laverna' do
  version '0.7.5'
  sha256 'fa9ec7a96928bb1b85ebce671f8b7fc021dfd43e89066a642f774f53bf241c5f'

  # github.com/Laverna/laverna was verified as official when first introduced to the cask
  url "https://github.com/Laverna/laverna/releases/download/#{version}/laverna-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Laverna/laverna/releases.atom',
          checkpoint: '5639cfb3ef7406238312c5a45d537219276554adc69a24308af94230f78463a9'
  name 'Laverna'
  homepage 'https://laverna.cc/'

  app 'laverna.app'
end
