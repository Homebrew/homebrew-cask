cask "nodenote" do
  version "2.19.7"
  sha256 "8b5d6905b03c003fd16abb67a912facb7d3feafd742546e8a9bcbb9f253df1a6"

  url "https://github.com/yetao0806/NodeNote/releases/download/v#{version}/mac_NodeNote_2.19.7.tar.gz"
  name "NodeNote"
  desc "MindMap software designed by PyQt5 with rich text and python synaxhighlighter"
  homepage "https://github.com/yetao0806/NodeNote/"

  app "NodeNote.app"
end
