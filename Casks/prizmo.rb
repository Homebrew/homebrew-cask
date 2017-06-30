cask 'prizmo' do
  version '3.1.18'
  sha256 '9d4ee123c7ec34f6947d02d1c26ae3e02a67cf80ffa8aeb16b0281c7eb364f02'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml",
          checkpoint: '0b45cf3d034171375d5cfbf60e1f451c7c888f35cbad2cbf63303a466e9f6b58'
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
