cask :v1 => 'androidtool' do
  version '1.17'
  sha256 '2e7ba654c4e6f87190cbf48daee6dc5c1ab49a4ffa962543c5749b54db3b7b28'

  url 'https://github.com/mortenjust/androidtool-mac/releases/download/1.17/AndroidTool.zip'
  name 'AndroidTool'
  homepage 'https://github.com/mortenjust/androidtool-mac'
  license :unknown

  app 'AndroidTool.app'
end