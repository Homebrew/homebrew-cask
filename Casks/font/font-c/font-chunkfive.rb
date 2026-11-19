cask "font-chunkfive" do
  version :latest
  sha256 :no_check

  url "https://github.com/theleagueof/chunk/archive/refs/heads/master.tar.gz"
  name "ChunkFive"
  homepage "https://www.theleagueofmoveabletype.com/chunk"

  font "chunk-master/Chunk Five Print.otf"
  font "chunk-master/ChunkFive-Regular.otf"

  zap :not_required
end
