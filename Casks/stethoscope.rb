cask 'stethoscope' do
  version '3.0.5'
  sha256 '79dc85aee1e1244d351a52deb071c3c1f13d9a104ebb4a80408f5b9d87f09337'

  # github.com/RagtagOpen/stethoscope-app was verified as official when first introduced to the cask
  url "https://github.com/RagtagOpen/stethoscope-app/releases/download/v#{version}/Stethoscope-#{version}-mac.zip"
  appcast 'https://github.com/RagtagOpen/stethoscope-app/releases.atom'
  name 'Stethoscope'
  homepage 'https://ragtag.org/stethoscope/'

  app 'Stethoscope.app'
end
