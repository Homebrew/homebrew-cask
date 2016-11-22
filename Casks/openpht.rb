cask 'openpht' do
  version '1.7.0.133-21c0dc37'
  sha256 '71b49318b37afda617aec68e1f19950a86d8d4b4408a030d4a9716e6e614aa89'

  url "https://github.com/RasPlex/OpenPHT/releases/download/v#{version}/OpenPHT-#{version}-macosx-x86_64.zip"
  appcast 'https://github.com/RasPlex/OpenPHT/releases.atom',
          checkpoint: '0b130cc600f08ef69bf0a48dec7c36059f6e7da275e171cb9edc45f3b01156eb'
  name 'OpenPHT'
  homepage 'https://github.com/RasPlex/OpenPHT'

  app 'OpenPHT.app'
end
