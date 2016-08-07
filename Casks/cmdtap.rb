cask 'cmdtap' do
  version '1.8.6'
  sha256 'ab6ac386a704bfb530964762917c5ae949d5affcff69641ef6c2ae7cb8d5bd28'

  url "http://www.yingdev.com/Content/Projects/CmdTap/Release/#{version}/CmdTap.zip"
  name 'CmdTap'
  homepage 'http://www.yingdev.com/projects/cmdtap'
  license :closed

  app 'CmdTap.app'
end
