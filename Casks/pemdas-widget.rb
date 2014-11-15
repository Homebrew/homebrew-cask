cask :v1 => 'pemdas-widget' do
  version '3.0'
  sha256 '7a5566d8a45a82fd64ecedc7fa5c00d9ec82f530f7065e18768d7da76b6e55af'

  url "http://www.donkeyengineering.com/downloads/pemdaswidget/releases/PEMDAS_#{version}.wdgt.zip"
  homepage 'http://www.donkeyengineering.com/pemdaswidget/'
  license :oss

  widget 'PEMDAS.wdgt'
  caveats <<-EOS.undent
    Currently, Dashboard Widgets such as '#{title}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

      https://github.com/caskroom/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.
  EOS
end
