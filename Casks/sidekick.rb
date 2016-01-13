cask 'sidekick' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://releases.oomphalot.com.s3-website-us-east-1.amazonaws.com/Sidekick/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick',
          :checkpoint => '3189e9a047142b750c4a04e2d5b1b83fb3424581e9430688b07a48c148767fe1'
  name 'Sidekick'
  homepage 'http://oomphalot.com/sidekick/'
  license :commercial

  app 'Sidekick.app'

  postflight do
    suppress_move_to_applications
  end
end
