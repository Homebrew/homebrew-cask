cask :v1 => 'handy-outliner' do
  version '1.1.6.2'
  sha256 'a67a21650d29114c058e1f50bce3675e7c7b427abdd67a60e49098a31046d14d'

  url "http://sourceforge.net/projects/handyoutlinerfo/files/#{version}/handyoutliner_#{version}.zip/download"
  name 'HandyOutliner for DjVu and PDF'
  homepage 'http://handyoutlinerfo.sourceforge.net'
  license :gpl

  depends_on :cask => 'mono-mdk',
             :formula => 'djvulibre'

  preflight do
    FileUtils.touch "#{staged_path}/handy-outliner"
    handyOutliner = File.open "#{staged_path}/handy-outliner", 'w'
    handyOutliner.puts '# !/bin/bash'
    handyOutliner.puts 'BASEDIR=$(dirname "$(readlink -n $0)")'
    handyOutliner.puts "$BASEDIR/handyoutliner_#{version}/start-macos"
    handyOutliner.close
  end

  binary 'handy-outliner'

  postflight do
    set_permissions "#{staged_path}/handy-outliner", '+x'
  end

  caveats do
    puts "To run this app, type 'handy-outliner' in terminal."
  end
end
