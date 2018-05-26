cask 'freedom' do
  version '1.6.8'
  sha256 'b986714064bfa0f9ff29999918665694f9a6f9a0c8404892583ca2ad07eac071'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '756394462b1e948a8a3510b5c4300f95056d4936ff23e023c2cfbb4390aee80e'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
