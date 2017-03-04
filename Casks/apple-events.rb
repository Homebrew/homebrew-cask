cask 'apple-events' do
  version '0.7'
  sha256 '02348341c90ac1810e326ee936854254fe1f29b50fac751266bd6934eba6b206'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}_r.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: '475d39ed0b4a3084af4f7a1068a49065fc7833973b08f3479a57f7f766668d8e'
  name 'Apple Events'
  homepage 'https://github.com/insidegui/AppleEvents'

  auto_updates true

  app 'Apple Events.app'
end
