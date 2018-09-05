cask 'lightworks' do
  version '14.0.0'
  sha256 '06d64bee517bfb13bbb1d5739dfd184fd2931bb8c1fab835bc066cbb6c41192d'

  url "http://downloads.lwks.com/v#{version.major}/lightworks_v#{version}.dmg"
  name 'Lightworks'
  homepage 'https://www.lwks.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Lightworks.app'

  zap trash: '~/Library/Saved Application State/com.editshare.lightworks.savedState'
end
