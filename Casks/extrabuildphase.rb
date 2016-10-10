cask 'extrabuildphase' do
  version '0.3.5'
  sha256 'c03ef96026624f68930a7e19dff6b6b8dc0766b939cb5f4a34c9f2d4bb54fb60'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom',
          checkpoint: '503763045d9623767595e09036ce4c96988629bdcfb9b1f15ef5f040c64f679b'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'

  artifact 'ExtraBuildPhase.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/ExtraBuildPhase.xcplugin"
end
