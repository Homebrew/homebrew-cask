cask 'mediaconch-app' do
  version '18.03'
  sha256 '59ad61b44c01e30cdd39ffe912f7799aa7faa69ff39d250c248c49be7e85460b'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '26d9dbc7f67b6867e24ee9d40bef3caf17a37dc033e5a741943da0bbecaae9b4'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
