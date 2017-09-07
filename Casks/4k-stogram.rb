cask '4k-stogram' do
  version '2.5.1.1346'
  sha256 '68366a9a51879193f260e9e8634ddb09c05316ed6f665f8526e060c3a034c745'

  url "https://downloads2.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '8de0a5725c670e5fa688b8f7ede33e197766ff2acd12e1de4b8d6bb5a267fdd3'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
