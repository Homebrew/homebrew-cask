cask :v1 => 'keepingyouawake' do
  version '1.2'
  sha256 '8087d86ea40cbcb933b87f59a58a9dfcb35b3e6faaa17e7dd17125496ccad58f'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  
  appcast "http://zweiuhr40.de/KeepingYouAwake/appcast.xml",
    :sha256 => "738fcec2775620870b759319b9c49fabb71cfff9eaf330048c9725816c52254d",
    :format => :sparkle
  
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
