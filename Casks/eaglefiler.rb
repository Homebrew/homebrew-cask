cask 'eaglefiler' do
  version '1.8.3'
  sha256 '6f84a7da832faeb12b012a92d21b373ee3988a73b76fd60a572e7c80eb6e6ca4'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
