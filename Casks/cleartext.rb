cask 'cleartext' do
  version '2.45'
  sha256 '4b3d44a0666c2bf2dd838c0f190e9a5678b2dc4d76e83d70fe091295d4cabdbc'

  url "https://github.com/mortenjust/cleartext-mac/releases/download/#{version}/Cleartext.zip"
  appcast 'https://github.com/mortenjust/cleartext-mac/releases.atom',
          checkpoint: 'bfaebff6f178edaefb157c457a0c577c3d63ed0003cd426b2c4837ab4cd8e6cb'
  name 'Cleartext'
  homepage 'https://github.com/mortenjust/cleartext-mac'

  app 'Cleartext.app'
end
