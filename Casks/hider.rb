cask 'hider' do
  version '2.4.7,1527148372'
  sha256 'd41a442075fde63a087a97654e047989b0de3a993b27859a4c0c3ff31b4886a6'

  # dl.devmate.com/com.macpaw.site.Hider was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Hider#{version.major}/#{version.before_comma}/#{version.after_comma}/MacPawHider#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Hider#{version.major}.xml",
          checkpoint: '2b20fface20e364318920e005f7ab488aac7104285205518d138101a91a3ad51'
  name 'MacPaw Hider'
  homepage 'https://macpaw.com/hider'

  depends_on macos: '>= :mountain_lion'

  app "MacPaw Hider #{version.major}.app"
end
