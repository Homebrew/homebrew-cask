cask 'querious' do
  version '2.0_beta47'
  sha256 '2aaab59cb566be4f035a6db5ba4190f273d0845b638711e09c50753956a2cc48'

  url "https://store.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: 'de7aae65da7303ce083fd2f699c3a17cf06d7ec8711e28e353707e8746f1dd7c'
  name 'Querious 2'
  homepage 'http://www.araelium.com/querious/'

  app 'Querious.app'
end
