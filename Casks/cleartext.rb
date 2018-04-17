cask 'cleartext' do
  version '2.45'
  sha256 '4b3d44a0666c2bf2dd838c0f190e9a5678b2dc4d76e83d70fe091295d4cabdbc'

  url "https://github.com/mortenjust/cleartext-mac/releases/download/#{version}/Cleartext.zip"
  appcast 'https://github.com/mortenjust/cleartext-mac/releases.atom',
          checkpoint: 'c4327bb05e50b5e7b13c63c7a5ab58095809c269b12fc295bfec2493a7fef7bc'
  name 'Cleartext'
  homepage 'https://github.com/mortenjust/cleartext-mac'

  app 'Cleartext.app'
end
