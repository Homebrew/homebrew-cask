cask 'extrabuildphase' do
  version '0.3.3'
  sha256 '4c033b5b9eed44d190a9c21c33f368f8074d71a5c88db989b239a2cc05c1667f'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom',
          checkpoint: '9f72773c36855fad2a5b93967c06a4595c61af80bf7ee81bc9aef7924c2dddb0'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  artifact 'ExtraBuildPhase.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/ExtraBuildPhase.xcplugin"
end
