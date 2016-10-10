cask 'cleartext' do
  version '1.4'
  sha256 '8a6873c20ef4157b31c3d56f96889c146f3b5556144923f1540d31f693a0c4cb'

  url "https://github.com/mortenjust/cleartext-mac/releases/download/#{version}/Cleartext#{version}.zip"
  appcast 'https://github.com/mortenjust/cleartext-mac/releases.atom',
          checkpoint: '36cf6a4185c77ad9e0e00df9d4f46fc3851e77d7c95f0a7621818249c06a7f0c'
  name 'Cleartext'
  homepage 'https://github.com/mortenjust/cleartext-mac'

  app 'Cleartext.app'
end
