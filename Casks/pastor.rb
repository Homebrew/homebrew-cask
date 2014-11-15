cask :v1 => 'pastor' do
  version '1.8.2'
  sha256 'ac41e7f300d722fcd9733a4f13a984d211b20f95c94db4dc07ab537fd45f8370'

  url "https://mehlau.net/pastor/Pastor#{version.gsub('.','')}-signed.dmg"
  homepage 'http://mehlau.net/pastor'
  license :unknown

  app 'Pastor.app'
end
