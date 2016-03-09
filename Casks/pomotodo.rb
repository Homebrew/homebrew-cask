cask 'pomotodo' do
  version '0.13.2,1453112814'
  sha256 '652d25d75d4f2ad73ad987da78a1486f5ea270916653f07a5aaf4369e11b29d8'

  # hackplan.com is the official download host per the vendor homepage
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: 'af014dc3310a984d9da77c960ae6364103cde1f9691991748e9678e3a1a9a9be'
  name 'Pomodoro'
  homepage 'https://pomotodo.com'
  license :gratis

  app 'Pomotodo.app'
end
