cask :v1 => 'sidekick' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://releases.oomphalot.com.s3-website-us-east-1.amazonaws.com/Sidekick/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick'
  homepage 'http://oomphalot.com/sidekick/'
  license :unknown    # todo: improve this machine-generated value

  app 'Sidekick.app'

  postflight do
    suppress_move_to_applications
  end
end
