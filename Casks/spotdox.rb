cask 'spotdox' do
  version :latest
  sha256 :no_check

  # herokuapp.com is the official download host per the vendor homepage
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml',
          :sha256 => '72e0cd200f0f9d848f3887526c2eb077b4d1e38b794bb5cedc4251f82ad4aaca'
  name 'Spotdox'
  homepage 'https://spotdox.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotdox.app'
end
