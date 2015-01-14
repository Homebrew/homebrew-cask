cask :v1 => 'beyond-compare' do
  version '4.0.3.19420'
  sha256 '2feb23098fa6fdc6885ef57fbea1a638a820f4eaeffbbd2e820ef7dc6272342f'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  homepage 'http://www.scootersoftware.com/'
  license :commercial

  app 'Beyond Compare.app'

  postflight do
    suppress_move_to_applications
  end
end
