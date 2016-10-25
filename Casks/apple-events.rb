cask 'apple-events' do
  version '0.7'
  sha256 '02348341c90ac1810e326ee936854254fe1f29b50fac751266bd6934eba6b206'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}_r.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: '751efe3487fe195362e1967f84e919a33138d3df47bf738c394bc0fad68a0a34'
  name 'Apple Events'
  homepage 'https://github.com/insidegui/AppleEvents'

  auto_updates true

  app 'Apple Events.app'
end
