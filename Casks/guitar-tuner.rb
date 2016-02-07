cask 'guitar-tuner' do
  version :latest
  sha256 :no_check

  url 'http://www.gieson.com/downloads/utilities/guitar_tuner_mac.zip'
  name 'Guitar Tuner'
  homepage 'http://www.gieson.com/Library/projects/utilities/tuner/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Guitar Tuner.app'
end
