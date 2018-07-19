cask 'evernote-cn' do
  version '8.1.1_456907'
  sha256 '307cf468c3e8af2a1977fceedc63fc32765b555a730413958b279875bad05d0c'

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
  name 'Evernote'
  name '印象笔记'
  homepage 'https://www.yinxiang.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app '印象笔记.app'
end
