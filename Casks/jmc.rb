cask 'jmc' do
  version '0.2-beta.5'
  sha256 'bd524ce2cbb4c05d93d4e7fd362a9f68ac15d307fffe0241a96df2a716c035fc'

  url "https://github.com/jcm93/jmc/releases/download/v#{version}/jmc.app.zip"
  appcast 'https://github.com/jcm93/jmc/releases.atom',
          checkpoint: 'f0d94b9ef85e4dce94a4a50ac22d1fad08c1030abf406d20cc4416560aa2d2e5'
  name 'jmc'
  homepage 'https://github.com/jcm93/jmc'

  app 'jmc.app'
end
