cask 'nteract' do
  version '0.4.3'
  sha256 '7673b19d2e893bed67d71e816139cf55bd19277aefc06e20fa5d85807a2d8816'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'f90213db1b6a5b6848ddf8338e3eda23ab8d6d685446650f2437259c24d77fc1'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
