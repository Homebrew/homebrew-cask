cask "senuti" do
  version "1.3.5"
  sha256 "cc7fc7910456affb479c99aa89d3c89122142354200990a27aecdde4dc90bdb7"

  url "https://fadingred.com/senuti_#{version}.zip"
  name "Senuti"
  desc "Transfers songs, playlists, or videos from an iPod to a computer"
  homepage "https://fadingred.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Senuti.app"
end
