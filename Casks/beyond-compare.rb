cask :v1 => 'beyond-compare' do
  version '4.0.0.18847'
  sha256 'cb9987b62ac68a2493b7bc5678125fbf1b8919796bc82718ddd23958768fd457'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  homepage 'http://www.scootersoftware.com/index.php'
  license :commercial

  app 'Beyond Compare.app'

  postflight do
    suppress_move_to_applications
  end
end
