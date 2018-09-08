cask ‘RoSa’ do

    version '2.2' 
    sha256 '#' # review
    url "http://www.steim.org/software/RoSa/RoSav2.2.zip"
    # appcast '#' # review
    name ‘RoSa’
    homepage 'http://steim.org/product/rosa/'
    app ‘/Applications/RoSa/RoSa.app’
    zap trash: '~/Library/Caches/RoSa’
  
  end
  