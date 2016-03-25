cask 'extrabuildphase' do
  version '0.3.4'
  sha256 'b2d6909417e1c9c7b96f81bde136565708544dda77aa26e06892620c44160372'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom',
          checkpoint: 'a4f1693dce4a7f70ac49fd8f435fc3f92e51a5e4b89027f3a5174c8341dc1445'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  artifact 'ExtraBuildPhase.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/ExtraBuildPhase.xcplugin"
end
