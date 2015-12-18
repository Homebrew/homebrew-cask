cask 'pastor' do
  version '1.8.2'
  sha256 'ac41e7f300d722fcd9733a4f13a984d211b20f95c94db4dc07ab537fd45f8370'

  url "https://mehlau.net/pastor/Pastor#{version.delete('.')}-signed.dmg"
  name 'Pastor'
  homepage 'https://mehlau.net/pastor/'
  license :gratis

  app 'Pastor.app'
end
