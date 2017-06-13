cask 'knuff' do
  version '1.1'
  sha256 'd954305fd0951d7d2697a55cd288c3d4af20b82293055ab0203f2a3518e92c27'

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  appcast 'https://github.com/KnuffApp/Knuff/releases.atom',
          checkpoint: 'd736b6239009ee0d0c1eb2795d902859b66c7fb250a80705539add563b4363c4'
  name 'Knuff'
  homepage 'https://github.com/KnuffApp/Knuff'

  app 'Knuff.app'
end
