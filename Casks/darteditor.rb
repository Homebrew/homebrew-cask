cask :v1 => 'darteditor' do
  version :latest
  sha256 :no_check

  # googleapis.com is the official download host per the vendor homepage
  url 'https://storage.googleapis.com/dart-archive/channels/stable/release/latest/editor/darteditor-macos-x64.zip'
  name 'Dart Editor'
  homepage 'https://www.dartlang.org/tools/editor/'
  license :bsd

  app 'dart/DartEditor.app'
end
