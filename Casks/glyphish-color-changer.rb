cask 'glyphish-color-changer' do
  version '1.0-beta.2'
  sha256 '2fe6d7b5b056a67ca69c4f5cf477bc0c9ecf47a8d7aa95eefcb97c0fde0e75d8'

  url "https://github.com/glyphish/color-changer/releases/download/v#{version}/#{version}.zip"
  appcast 'https://github.com/glyphish/color-changer/releases.atom',
          checkpoint: 'ae9964f5d451cb548f65709fb622e85d731a95ec1f4c47ac753472da98ebe7b5'
  name 'Glyphish Color Changer'
  homepage 'https://github.com/glyphish/color-changer'

  app 'Glyphish Color Changer.app'
end
