cask 'qlab' do
  version '4.0.11'
  sha256 'b8351582c6df68637f82c8536778314ced60a620e801493dbf2456df8fa04fbf'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: 'b4938347ea3dfcc8ce15a58979420d19ad560ee304578c2e63a4c70eb64c525f'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
