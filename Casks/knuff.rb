cask 'knuff' do
  version '1.1'
  sha256 'd954305fd0951d7d2697a55cd288c3d4af20b82293055ab0203f2a3518e92c27'

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  appcast 'https://github.com/KnuffApp/Knuff/releases.atom',
          checkpoint: '4dbd515606ee39d27435503496353d109454c571ca2fe88ce4eed0a74deac0e1'
  name 'Knuff'
  homepage 'https://github.com/KnuffApp/Knuff'

  app 'Knuff.app'
end
