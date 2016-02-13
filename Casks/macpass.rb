cask 'macpass' do
  version '0.6-alpha'
  sha256 '36e603a0ee310ccf341b885948910b0d05a0a29fe2aac19b0e12a47a74159e3a'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: '81b5266c94e2bf6910661686962296be947bd1a07de612c36b22d8ba53de1ab4'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'
  license :gpl

  app 'MacPass.app'
end
