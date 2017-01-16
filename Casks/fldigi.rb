cask 'fldigi' do
  version '3.23.20'
  sha256 '810442f31b3778637ed12877e9139bcd78fd0a65c1988cb8872e8c4373b83845'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'd999ef89e1203828992bd5f88c90f9fcec36b9882e6ee02718fddc671f43e996'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
