cask 'caption' do
  version '1.2.1'
  sha256 '1751a982812a76e9c0a250659f326b5bb677ad4701aa97b4b0a04b069f72e465'

  # github.com/gielcobben/Caption was verified as official when first introduced to the cask
  url "https://github.com/gielcobben/Caption/releases/download/v#{version}/Caption-v#{version}-darwin_x64.dmg"
  appcast 'https://github.com/gielcobben/Caption/releases.atom',
          checkpoint: '281fc39c69bbfec6c43e7008592939292753b83e29a52ec5aa3821ef2b737c51'
  name 'Caption'
  homepage 'https://getcaption.co/'

  app 'Caption.app'
end
