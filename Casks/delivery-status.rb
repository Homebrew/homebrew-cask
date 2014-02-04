class DeliveryStatus < Cask
  url 'http://junecloud.com/get/delivery-status-widget?6.0'
  homepage 'http://junecloud.com/software/mac/delivery-status.html'
  version '6.0'
  sha1 '420a90389edd7dd59847ac0cc5a75f79baa55592'
  widget 'Delivery Status.wdgt'
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
