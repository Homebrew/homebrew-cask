cask :v1 => 'markright' do
  version '0.1.3'
  sha256 'b386b2f24294ceafd012cd009da8af0a329d5a1c560ca7a9b18088bdf086965e'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
