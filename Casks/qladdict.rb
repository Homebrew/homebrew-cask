cask 'qladdict' do
  version '1.2.4'
  sha256 '2af44d8392f75616c7852f37e627b674d561306328351331cb592ac93ea244cd'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QLAddict.qlgenerator.#{version}.zip"
  appcast 'https://github.com/tattali/QLAddict/releases.atom',
          checkpoint: '6a7c4a7082cbcd9b69eccc2587ca853c4c840e79b33f3ad698962df108cf75bb'
  name 'QLAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QLAddict.qlgenerator'
end
