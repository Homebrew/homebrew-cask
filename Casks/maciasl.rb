cask :v1 => 'maciasl' do
  version '1.3'

  if MacOS.release == :lion
    sha256 '6ba1eafbdf8d954f3c72fc4d5d9e06e15b101522ac253772a06c8579c45675de'
    url "http://downloads.sourceforge.net/sourceforge/maciasl/#{version}/MaciASL_Lion.zip"
  else
    sha256 '166b818ed26e33f15b7ee12da90126edae3a21e56abe540ef0255e7f61e9695b'
    url "http://downloads.sourceforge.net/sourceforge/maciasl/#{version}/MaciASL_ML.zip"
  end

  name 'MaciASL'
  homepage 'http://sourceforge.net/projects/maciasl/'
  license :gpl

  app 'MaciASL.app'

  depends_on :macos => '>= :lion'
end
