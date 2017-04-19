cask 'qladdict' do
  version '1.1.9'
  sha256 'f19b7b6fc406e9406fffe72a3f689c2f8825ba5cf62247ddca2a42c59512cc51'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QLAddict.qlgenerator.#{version}.zip"
  appcast 'https://github.com/tattali/QLAddict/releases.atom',
          checkpoint: 'fb11e07a57ef9507ce915e55e7a35419852767a4b39157dabda9e8914444d3b5'
  name 'QLAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QLAddict.qlgenerator'
end
