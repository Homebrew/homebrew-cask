cask 'rapidweaver' do
  version '6.3.8'
  sha256 '780e2894ad450f7743c3e05a10c79308412098a738a098ef5dea55007122149b'

  # devmate.com/com.realmacsoftware.rapidweaver6 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/RapidWeaver#{version.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml",
          checkpoint: '5462a78b61a3834b1a5323c3b969acc231dff40cc403b9f5fb9422fffcd7bc81'
  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on macos: '>= :leopard'

  app "RapidWeaver #{version.major}.app"
end
