cask :v1 => 'changes-meter' do
  version :latest
  sha256 :no_check

  url 'http://intuiware.com/downloads/changes-meter'
  homepage 'http://intuiware.com/apps/changes-meter'
  license :unknown    # todo: improve this machine-generated value

  app 'Changes Meter.app'
  postflight do
    suppress_move_to_applications
  end
end
