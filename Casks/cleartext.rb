cask 'cleartext' do
  version '1.3.1'
  sha256 'c53860370de86d59d81eb1164df1ea17a7824333be4eb2beb52843663dbb5b27'

  url "https://github.com/mortenjust/cleartext-mac/releases/download/#{version}/Cleartext#{version}.zip"
  appcast 'https://github.com/mortenjust/cleartext-mac/releases.atom',
          checkpoint: '3bc07ccdbae7659e08df6ddc12c65b83131c8f92fbb6eab473ea6be1fdd34344'
  name 'Cleartext'
  homepage 'https://github.com/mortenjust/cleartext-mac'
  license :mit

  app 'Cleartext.app'
end
