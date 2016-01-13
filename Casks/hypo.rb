cask 'hypo' do
  version '0.5.4'
  sha256 '7f815338d91baf6cac953b9f85350f32285d063a90e4ba3197266f23fc54cd4c'

  # github.io is the official download host per the vendor homepage
  url "https://hypo.github.io/HypoAppPublic/hypo-#{version}.app.tbz"
  appcast 'https://hypo.github.io/HypoAppPublic/appcast.xml',
          :sha256 => '354de343348d5ff40bc64b62f9b13c708ab62322539eee7fd10ce5a756805e87'
  name 'hypo'
  homepage 'https://hypo.cc/mac.html'
  license :gratis

  app 'Hypo.app'

  zap :delete => [
                   '~/Library/Caches/cc.hypo.hypo',
                   '~/Library/Preferences/cc.hypo.hypo.plist',
                   '~/Library/Saved Application State/cc.hypo.hypo.savedState',
                 ]
end
