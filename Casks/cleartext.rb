cask 'cleartext' do
  version '2.45'
  sha256 '4b3d44a0666c2bf2dd838c0f190e9a5678b2dc4d76e83d70fe091295d4cabdbc'

  url "https://github.com/mortenjust/cleartext-mac/releases/download/#{version}/Cleartext.zip"
  appcast 'https://github.com/mortenjust/cleartext-mac/releases.atom',
          checkpoint: 'a97a4e71395b006d52aca725321b82d63b77aa75d5a4571daba06e9ecda0847c'
  name 'Cleartext'
  homepage 'https://github.com/mortenjust/cleartext-mac'

  app 'Cleartext.app'
end
