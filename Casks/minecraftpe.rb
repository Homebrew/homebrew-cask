cask 'minecraftpe' do
  version '1-4-release-20180624'
  sha256 'a2d733992b0ad9b2cc11cef45dc700724481d66892353617c204e2eadbc84f65'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url "https://meedownloads.azureedge.net/#{version}/macOS/Minecraft_Education_Edition.dmg"
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
