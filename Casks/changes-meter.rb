cask :v1 => 'changes-meter' do
  version :latest
  sha256 :no_check

  url 'http://intuiware.com/downloads/changes-meter'
  name 'Changes Meter'
  homepage 'http://intuiware.com/apps/changes-meter'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Changes Meter.app'

  postflight do
    suppress_move_to_applications
  end
end
