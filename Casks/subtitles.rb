cask :v1 => 'subtitles' do
  version '2.2'
  sha256 'c8f00cd00a85f16b7a74de846b9f03fcd0cd0e144336438aa09aef50d527ce0f'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '417c1f9056428a2ed1b83a8e286b823e98305a8f29f17ddfce614ac4271343af'
  homepage 'http://subtitlesapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Subtitles.app'
end
