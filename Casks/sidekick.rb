cask 'sidekick' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://releases.oomphalot.com.s3-website-us-east-1.amazonaws.com/Sidekick/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick',
          :checkpoint => 'c40321d5554f65b4d54b6258b8d808350e4992e5ef1cb65b3b9272b383e58de3'
  name 'Sidekick'
  homepage 'http://oomphalot.com/sidekick/'
  license :commercial

  app 'Sidekick.app'

  postflight do
    suppress_move_to_applications
  end
end
