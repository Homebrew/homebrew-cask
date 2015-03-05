cask :v1 => 'cd-to' do
  version '2.6.0'
  sha256 'a92def521d332a373f655a41338d0ec18dfaa6e24eb9ec2ca6df281398db3d46'

  url "https://github.com/jbtule/cdto/releases/download/#{version.gsub('.', '_')}/cdto_#{version.gsub('.', '_').gsub(/_\d$/, '')}.zip"
  homepage 'https://github.com/jbtule/cdto'
  license :mit

  app "cdto_#{version.gsub('.', '_').gsub(/_\d$/, '')}/terminal/cd to.app"
end
