cask 'conferences' do
  version '0.0.1-alpha21'
  sha256 '53348fd30d4c0367014d46cad1e581318ba4915259ac9845c668ebdf6184590c'

  # github.com/zagahr/Conferences.digital was verified as official when first introduced to the cask
  url "https://github.com/zagahr/Conferences.digital/releases/download/#{version}/Conferences_v#{version}.zip"
  appcast 'https://zagahr.github.io/Conferences.digital/appcast.xml'
  name 'Conferences.digital'
  homepage 'https://conferences.digital/'

  depends_on macos: '>= :mojave'

  app 'Conferences.app'
end
