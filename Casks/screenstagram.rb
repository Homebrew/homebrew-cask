cask 'screenstagram' do
  version '2.01'
  sha256 '5cb9f7be247fdec897248f5091818bf7b25153fa99782e96f9d9b2c2431cdbb1'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://screenstagram.s3.amazonaws.com/screenstagram_#{version}.dmg"
  name 'Screenstagram'
  homepage 'https://screenstagram.s3.amazonaws.com/download.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  screen_saver 'Screenstagram 2.saver'
end
