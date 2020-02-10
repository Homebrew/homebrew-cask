cask 'sonic-visualiser' do
  version '4.0.1,2612'
  sha256 'bafa55e09b46d384e944efc4df3316439fc0e5a6925dc76829f183a1e9cc6ceb'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG'
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  depends_on macos: '>= :sierra'

  app 'Sonic Visualiser.app'
end
