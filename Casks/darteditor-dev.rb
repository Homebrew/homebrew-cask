cask :v1 => 'darteditor-dev' do
  version :latest
  sha256 :no_check

  # googleapis.com is the official download host per the vendor homepage
  url 'https://storage.googleapis.com/dart-archive/channels/dev/release/latest/editor/darteditor-macos-x64.zip'
  name 'Dart Editor'
  homepage 'https://www.dartlang.org/tools/editor/'
  license :bsd

  app 'dart/DartEditor.app', :target => 'DartEditor-dev.app'
end
