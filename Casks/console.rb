cask 'console' do
  version '0.2.0'
  sha256 'b49df2c4df4e99a9f4b50d8b426b1084f0d64a3d037a7e9960c5e87968f03b87'

  url "https://github.com/macmade/Console/releases/download/#{version}/Console.app.zip"
  appcast 'https://github.com/macmade/Console/releases.atom',
          checkpoint: '92aa5293b80b88bfc7c52a82eb8be6ccec7ee81afb0571167ae7d8ae316638c2'
  name 'Console'
  homepage 'https://github.com/macmade/Console'

  depends_on macos: '>= :el_capitan'

  app 'Console.app'
end
