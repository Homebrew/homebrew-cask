cask 'freedom' do
  version '2.0.3'
  sha256 '4f824407b66ddf79bce9a37200139d4ddc1bfbfee5406948c3082f077bfc924a'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
