cask 'camtasia' do
  version '2019.0.2'
  sha256 'e41a329d9d6ee9808ad0dfdfe2e0f655ce6fef538607b2e0935109f4513bff19'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
