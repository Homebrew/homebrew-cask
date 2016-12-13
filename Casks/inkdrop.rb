cask 'inkdrop' do
  version '2.6.2'
  sha256 'b6fb511c488dc8ca4d03489b1198e07445164a6066998af136a926ad8e5fe666'

  url "https://www.inkdrop.info/api/update/Inkdrop-#{version}-Mac.zip"
  name 'Inkdrop'
  homepage 'https://www.inkdrop.info/'

  app 'Inkdrop (Beta).app'
end
