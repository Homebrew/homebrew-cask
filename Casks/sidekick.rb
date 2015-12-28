cask 'sidekick' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://releases.oomphalot.com.s3-website-us-east-1.amazonaws.com/Sidekick/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick',
          :sha256 => 'f8dcd1967af7474c0a2134df70e099a3d3e4ccc019d21b85764dfbabaab374cb'
  name 'Sidekick'
  homepage 'http://oomphalot.com/sidekick/'
  license :commercial

  app 'Sidekick.app'

  postflight do
    suppress_move_to_applications
  end
end
