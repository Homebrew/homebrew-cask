cask :v1 => 'hypo' do
  version '0.5.4'
  sha256 '7f815338d91baf6cac953b9f85350f32285d063a90e4ba3197266f23fc54cd4c'

  # github.io is the official download host per the vendor homepage
  url "http://hypo.github.io/HypoAppPublic/hypo-#{version}.app.tbz"
  appcast 'http://hypo.github.io/HypoAppPublic/appcast.xml',
          :sha256 => '917c51dfaf3bc58c265e8f465813d82ace4f4d0765b0dfaa322fb26a2e545018'
  name 'hypo'
  homepage 'http://hypo.cc/mac.html'
  license :gratis

  app 'Hypo.app'

  zap :delete => [
                  '~/Library/Caches/cc.hypo.hypo',
                  '~/Library/Preferences/cc.hypo.hypo.plist',
                  '~/Library/Saved Application State/cc.hypo.hypo.savedState'
                 ]
end
