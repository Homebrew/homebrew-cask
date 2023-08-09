cask "miln-movie-splitter" do
  version "1.7.2"
  sha256 "da83197ca6f7c9e079b1bc69667bd458c9b5e9dceb90c49a866c7a2fce096080"

  url "https://miln.eu/moviesplitter/milnmoviesplitter-#{version.no_dots}.dmg"
  name "Miln Movie Splitter"
  desc "Split movies into smaller parts by chapter marker or duration"
  homepage "https://miln.eu/moviesplitter"

  livecheck do
    url "https://miln.eu/moviesplitter/latest.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Movie Splitter.app"

  zap trash: "~/Library/Containers/eu.miln.movie-splitter"
end
