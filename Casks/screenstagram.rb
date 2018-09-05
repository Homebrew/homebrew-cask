cask 'screenstagram' do
  version '2.01'
  sha256 '5cb9f7be247fdec897248f5091818bf7b25153fa99782e96f9d9b2c2431cdbb1'

  url "https://screenstagram.s3.amazonaws.com/screenstagram_#{version}.dmg"
  name 'Screenstagram'
  homepage 'https://screenstagram.s3.amazonaws.com/download.html'

  screen_saver 'Screenstagram 2.saver'

  caveats do
    discontinued
  end
end
