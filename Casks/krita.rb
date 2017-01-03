cask 'krita' do
  version '3.1.1'
  sha256 '6a654ed36b24ad77ce6c55cf850234aa7db1f7bf1b6bddb54491097401ee90f8'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
