class Darteditor < Cask
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/dart-archive/channels/stable/release/latest/editor/darteditor-macos-x64.zip'
  homepage 'https://www.dartlang.org/tools/editor/'

  app 'dart/DartEditor.app'
end
