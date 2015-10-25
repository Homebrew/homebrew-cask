cask :v1 => 'hypo' do
  version '0.5.3'
  sha256 'fc32274ce0189358b28072a5ac612551481312aa21dfda8e69d9d6d1ec765916'

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
