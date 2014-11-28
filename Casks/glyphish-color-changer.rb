cask :v1 => 'glyphish-color-changer' do
  version '1.0-beta.2'
  sha256 '2fe6d7b5b056a67ca69c4f5cf477bc0c9ecf47a8d7aa95eefcb97c0fde0e75d8'

  url "https://github.com/glyphish/color-changer/releases/download/v#{version}/#{version}.zip"
  homepage 'https://github.com/glyphish/color-changer'
  license :unknown

  app 'Glyphish Color Changer.app'
end
