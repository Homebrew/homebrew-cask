cask 'eme' do
  version '0.15.0'
  sha256 '4147bf3e896cba431d041aa203b19aa26df03f368d29ba97af8728acaac2429d'

  url "https://github.com/egoist/eme/releases/download/v#{version}/EME-#{version}.dmg"
  appcast 'https://github.com/egoist/eme/releases.atom'
  name 'EME'
  homepage 'https://github.com/egoist/eme'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'EME.app'
end
