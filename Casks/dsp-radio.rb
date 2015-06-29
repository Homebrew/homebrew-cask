cask :v1 => 'dsp-radio' do
  version '1.4.1'
  sha256 'b04ff63d41a47923455499340e32706df83a184c54c590d70191072b8fdbbbc9'

  url "https://dl2sdr.homepage.t-online.de/files/DSP_Radio_#{version.gsub('.','')}.zip"
  name 'DSP Radio'
  homepage 'https://dl2sdr.homepage.t-online.de/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "DSP Radio #{version}.app"
end
