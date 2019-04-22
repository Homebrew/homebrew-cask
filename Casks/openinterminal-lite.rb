cask 'openinterminal-lite' do
  version '0.4.0'
  sha256 '52c325e3d538795e359b1009deffcd1ed62ba55c1dff0d9f2eb033ea05bfc7ac'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
