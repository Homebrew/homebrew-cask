cask :v1 => 'phoenix-slides' do
  version '1.3.1'
  sha256 '6e5df9e586bb33b79249d9917f99f50395f255b85bf39c5fafca64fe66aef758'

  url "http://blyt.net/phxslides/phoenix-slides-#{version.gsub('.','')}.zip"
  name 'Phoenix Slides'
  homepage 'http://blyt.net/phxslides'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Phoenix Slides.app'
end
