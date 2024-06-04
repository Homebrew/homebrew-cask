cask "font-migu-1c" do
  version "2020.0307"
  sha256 "de18e4558495ab2860e01a218e43274c49660ab882085f4b803bfd9f0ccde02b"

  url "https://github.com/itouhiro/mixfont-mplus-ipa/releases/download/v#{version}/migu-1c-#{version.no_dots}.zip",
      verified: "github.com/itouhiro/mixfont-mplus-ipa/"
  name "Migu 1C"
  homepage "https://itouhiro.github.io/mixfont-mplus-ipa/migu/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{href=.*?/migu-1c-(\d*)\.zip}i)
          .map { |match| match[0].insert(4, ".") }
    end
  end

  font "migu-1c-#{version}/migu-1c-bold.ttf"
  font "migu-1c-#{version}/migu-1c-regular.ttf"

  # No zap stanza required
end
