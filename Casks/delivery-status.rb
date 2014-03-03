class DeliveryStatus < Cask
  url 'http://junecloud.com/get/delivery-status-widget?6.0'
  homepage 'http://junecloud.com/software/mac/delivery-status.html'
  version '6.0'
  sha256 'a885c5802492cb92c994c23111ab1edcf4792b319c30cc9ca4296436f3b8cbaa'
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
