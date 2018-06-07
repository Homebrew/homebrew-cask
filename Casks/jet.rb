cask 'jet' do
  version '2.6.1'
  sha256 '1bc2cb084eeb643938778d93b98d53362dc0760e5bcf7220cbc6918dc4bcc9e0'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  appcast 'https://documentation.codeship.com/pro/jet-cli/release-notes/',
          checkpoint: '609a41fe543f2f21c957ad28156e52b4135c32f2335ffbf60769d4ded136cf3d'
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/builds-and-configuration/cli/'

  binary 'jet'
end
