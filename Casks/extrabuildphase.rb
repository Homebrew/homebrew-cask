cask :v1 => 'extrabuildphase' do
  version '0.3.2'
  sha256 'a2181e7bdc78851f336752091ae30b23ede348f06dc6d3ab9980725e2cacbf64'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  artifact 'ExtraBuildPhase.xcplugin', :target => "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/ExtraBuildPhase.xcplugin"
end
