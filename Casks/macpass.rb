cask 'macpass' do
  version '0.7.2'
  sha256 'dc140b02b1d99e589db58ac12d12fd28b99b7186f966eb50888cbfa4d3657bd5'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: '2c7f18670d33cf8537193edb7164fd74e39265257a139047b224ff0f3e21f855'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
