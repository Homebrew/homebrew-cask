cask 'screenshot-designer' do
  version '1.1'
  sha256 '4b0d850027a4c397531e2b3934165ddad63166d3af671aa3308006c0c2f21eb7'

  url "https://screenshotdesigner.com/updates/archives/#{version}.zip"
  appcast 'https://screenshotdesigner.com/updates/appcast.xml',
          checkpoint: 'bc00eccdcecba4efb78d0173c37c5bc3c31e4d643413dc67adf3def2f687c662'
  name 'Screenshot Designer'
  homepage 'https://screenshotdesigner.com/'

  app 'Screenshot Designer.app'
end
