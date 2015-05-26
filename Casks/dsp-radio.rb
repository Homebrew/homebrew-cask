cask :v1 => 'dsp-radio' do
  version '1.4.1'
  sha256 'b04ff63d41a47923455499340e32706df83a184c54c590d70191072b8fdbbbc9'

  url 'http://dl2sdr.homepage.t-online.de/files/DSP_Radio_141.zip'
  name 'DSP Radio'
  homepage 'http://dl2sdr.homepage.t-online.de/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "DSP Radio #{version}.app"
end
