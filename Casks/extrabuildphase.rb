cask 'extrabuildphase' do
  version '0.3.5'
  sha256 'c03ef96026624f68930a7e19dff6b6b8dc0766b939cb5f4a34c9f2d4bb54fb60'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom',
          checkpoint: '05114df46559e7336e4b80bbf63a546a8af962e1386d2df0304f5b78558932d9'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'

  artifact 'ExtraBuildPhase.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/ExtraBuildPhase.xcplugin"
end
