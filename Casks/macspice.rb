cask 'macspice' do
  version '3.1.18'
  sha256 '6ea40379a2fb226bbe32bd6d3c83853a44c0b58949b15434666e62ba7599acda'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: 'cc62b57cc053bfd576ade5e5a8f8db1e1d628435168afbc6dfe084749d78b3a4'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
