cask :v1_1 => 'darteditor' do
  version '1.10-45692'

  if Hardware::CPU.is_32_bit?
    sha256 '151c303a86a59d196d634cc4aac0219f59aef8d7ca56f9893e77ea3beb0f0340'
    # googleapis.com is the official download host per the vendor homepage
    url "https://storage.googleapis.com/dart-archive/channels/stable/release/#{version.sub(%r{^.*?-},'')}/editor/darteditor-macos-ia32.zip"
  else
    sha256 '9b11cf25ef908d2680e912e928fbfab52b1abdb7c1104efa991c7aa8774b914e'
    # googleapis.com is the official download host per the vendor homepage
    url "https://storage.googleapis.com/dart-archive/channels/stable/release/#{version.sub(%r{^.*?-},'')}/editor/darteditor-macos-x64.zip"
  end

  name 'Dart Editor'
  homepage 'https://www.dartlang.org/tools/editor/'
  license :bsd

  app 'dart/DartEditor.app'

  caveats do
    discontinued
  end
end
