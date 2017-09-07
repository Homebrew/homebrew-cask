cask 'studio-3t' do
  version '5.5.0'
  sha256 '613745aec2500aae6eef72e80196b615fe2fb001844ff1776852b6bf667c82b2'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '1cd11a3f42735dea49c6b4a1c91d09a310ef6789745df4249acfd57ac2658002'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
