cask 'dsp-radio' do
  version '1.4.6'
  sha256 '8c4312487519727f6d96454ec01cbcbb207bd813655e37a870f04d096618e015'

  url "https://dl2sdr.homepage.t-online.de/files/DSP_Radio_#{version.no_dots}.zip"
  appcast 'https://dl2sdr.homepage.t-online.de/',
          checkpoint: '8616cd38ccc67c3c217c317d92249ffbfc3e3cda55af49f54c3b347747f854b8'
  name 'DSP Radio'
  homepage 'https://dl2sdr.homepage.t-online.de/'

  app "DSP Radio #{version}.app"
end
