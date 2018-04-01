cask 'patchwork' do
  version '3.8.10'
  sha256 'e25fafdf1b219a0d77ae2a5b24001fb46106b29a05d63b5a5d80da8c50194895'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '952a6faed3af64e356ed3c8172cff3733511675e471b65a1c147dc5c8488c938'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
