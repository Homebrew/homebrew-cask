cask :v1 => 'extrabuildphase' do
  version '0.3.1'
  sha256 '1a9e407a6d036fc955aec92cef20900b5dddb8a0531375bb183639112c62450f'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  artifact 'ExtraBuildPhase.xcplugin', :target => "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/ExtraBuildPhase.xcplugin"
end
