cask 'feisty-dog-tag' do
  version '1.0.4,010'
  sha256 '1bfc83427aa474d9df3c5413ee5645a0e5b134ceef642bf99a717af1798e72df'

  # amazonaws.com/feisty-dog was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/feisty-dog/versions/binaries/000/000/#{version.after_comma}/Tag-#{version.before_comma}.zip"
  appcast 'https://www.feisty-dog.com/panel/updates/Tag',
          checkpoint: 'ce6634f8e74e8f0cc3f35f51e129063d950bef1c9b2e44fd5df5160c5b1610d0'
  name 'Tag'
  homepage 'https://www.feisty-dog.com/tag/'
  license :commercial

  app 'Tag.app'
end
