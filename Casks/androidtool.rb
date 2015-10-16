cask :v1 => 'androidtool' do
  version '1.17'
  sha256 '2e7ba654c4e6f87190cbf48daee6dc5c1ab49a4ffa962543c5749b54db3b7b28'

  url "https://github.com/mortenjust/androidtool-mac/releases/download/#{version}/AndroidTool.zip"
  appcast 'https://github.com/mortenjust/androidtool-mac/releases.atom'
  name 'AndroidTool'
  homepage 'https://github.com/mortenjust/androidtool-mac'
  license :apache

  app 'AndroidTool.app'
end
