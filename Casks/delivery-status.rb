class DeliveryStatus < Cask
  version '6.1'
  sha256 '27cd6a9fcd03c28c8519a6e1e7a17c52433c2b5fc13d8c28c5256130f5045e3d'

  url 'http://junecloud.com/get/delivery-status-widget?6.1'
  homepage 'http://junecloud.com/software/mac/delivery-status.html'

  widget 'Delivery Status.wdgt'
  caveats do
    puts <<-EOS.undent
    Currently, Dashboard Widgets such as '#{@cask}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

        https://github.com/caskroom/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.

    EOS
    end
end
