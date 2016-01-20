cask 'handy-outliner' do
  version '1.1.6.2'
  sha256 'a67a21650d29114c058e1f50bce3675e7c7b427abdd67a60e49098a31046d14d'

  url "http://downloads.sourceforge.net/handyoutlinerfo/handyoutliner_#{version}.zip"
  name 'HandyOutliner for DjVu and PDF'
  homepage 'http://handyoutlinerfo.sourceforge.net'
  license :gpl

  depends_on cask:    'mono-mdk',
             formula: 'djvulibre'

  binary 'handy-outliner'

  preflight do
    FileUtils.touch "#{staged_path}/handy-outliner"
    handy_outliner = File.open "#{staged_path}/handy-outliner", 'w'
    handy_outliner.puts '# !/bin/bash'
    handy_outliner.puts 'BASEDIR=$(dirname "$(readlink -n $0)")'
    handy_outliner.puts "$BASEDIR/handyoutliner_#{version}/start-macos"
    handy_outliner.close
  end

  postflight do
    set_permissions "#{staged_path}/handy-outliner", '+x'
  end

  caveats do
    puts "To run this app, type 'handy-outliner' in terminal."
  end
end
