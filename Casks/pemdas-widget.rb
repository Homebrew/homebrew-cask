class PemdasWidget < Cask
  url 'http://www.donkeyengineering.com/downloads/pemdaswidget/releases/PEMDAS_3.0.wdgt.zip'
  homepage 'http://www.donkeyengineering.com/pemdaswidget/'
  version '3.0'
  sha1 '0f5ecfc2077d2d950bb698b2abab54817a49b371'
  widget 'PEMDAS.wdgt'
  caveats do
    puts <<-EOS.undent
    Currently, Dashboard Widgets such as '#{@cask}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

        https://github.com/phinze/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.

    EOS
    end
end
