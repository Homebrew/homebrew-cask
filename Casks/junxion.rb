cask ‘JunXion’ do

    version '5.38' 
    sha256 '#' # review
    url "http://steim.org/software/junXion_v5/junXion%20v5.38%20release.zip"
    # appcast '#' # review
    name ‘JunXion’
    homepage 'http://steim.org/product/junxion/'
    app "/Applications/junXion v5.38 release/junXion.app"
    zap trash: '~/Library/Caches/JunXion’
  
  end
  