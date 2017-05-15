cask 'keypad-layout' do
  version '1.2'
  sha256 '3ab918b4ca61a0f8b281d29ef6eb732969289583ea4e5e45f0a22aa95c9a91d4'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: '304da5404549049922f6f052188c36051af13af1be94645261c3ee7634858881'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
