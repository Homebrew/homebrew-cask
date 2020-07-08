cask 'phocus' do
  version '3.5.1'
  sha256 '4455cc62b6da566e750b7a25fab14cb0efc4bc921870f047ae71b0eaf42b2854'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
