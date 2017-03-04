cask 'dsp-radio' do
  version '1.4.6'
  sha256 '8c4312487519727f6d96454ec01cbcbb207bd813655e37a870f04d096618e015'

  url "https://dl2sdr.homepage.t-online.de/files/DSP_Radio_#{version.no_dots}.zip"
  name 'DSP Radio'
  homepage 'https://dl2sdr.homepage.t-online.de/'

  app "DSP Radio #{version}.app"
end
