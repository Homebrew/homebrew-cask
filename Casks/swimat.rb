cask 'swimat' do
  version '1.3.5'
  sha256 '74d250c1bd646a709fb2086276e9734b8f7c7daa3987a822fbf782e81819e38c'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '8337435f96dcd88b2f407e7f9e8d1e5ea1ddf18e63751287df3ff7bd94ec8b23'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
