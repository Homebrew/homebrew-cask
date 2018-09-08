cask 'actoolbox' do

    version '4.5.6' 
    sha256 '#' # review
    url "http://www.actoolbox.net/data/documents/ACToolbox.4.5.6.dmg"
    # appcast '#' # review
    name ‘JunXion’
    homepage 'http://www.actoolbox.net/download/'
    app "/Applications/AC Toolbox/AC Toolbox.app "
    zap trash: '~/Library/Caches/Toolbox
  
  end
  