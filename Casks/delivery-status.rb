cask :v1 => 'delivery-status' do
  version '6.1.2'
  sha256 'f39afd137c99df16baf149c60f1a982edb9485f6211f4aefb9cad19af7a51514'

  url "http://junecloud.com/get/delivery-status-widget?#{version}"
  homepage 'http://junecloud.com/software/mac/delivery-status.html'
  license :oss

  widget 'Delivery Status.wdgt'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    Currently, Dashboard Widgets such as '#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

      https://github.com/caskroom/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.
  EOS
end
