cask 'jmc' do
  version '0.3-beta'
  sha256 'b6e9303815d80948b80e1f94d797e1ee4ce1017940b236284930abc583ce6e41'

  url "https://github.com/jcm93/jmc/releases/download/v#{version}/jmc.app.zip"
  appcast 'https://github.com/jcm93/jmc/releases.atom',
          checkpoint: 'e6caffd897c1dba961506df3a55b8f90c85b242cb7b3be1d937f0ab1c1004a4d'
  name 'jmc'
  homepage 'https://github.com/jcm93/jmc'

  app 'jmc.app'
end
