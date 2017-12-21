cask 'gzdoom' do
  version '3.2.4'
  sha256 'c699b005023cf0770d487a0981a7629d19f578a5ed7d992006876deacbb90810'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: 'fb1f4384574c59c0a1181509f9dce8c7b1273ff3863fa979c15e46798587686b'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
