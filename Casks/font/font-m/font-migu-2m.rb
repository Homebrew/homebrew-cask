cask "font-migu-2m" do
  version "2023.1123"
  sha256 "e7845f148772c984064c325eba70ed4dfb9a27084c2011a3a1b6194be6e439e5"

  url "https://github.com/itouhiro/mixfont-mplus-ipa/releases/download/v#{version}/migu-2m-#{version.no_dots}.zip",
      verified: "github.com/itouhiro/mixfont-mplus-ipa/"
  name "Migu 2M"
  homepage "https://itouhiro.github.io/mixfont-mplus-ipa/migu/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(/href=.*migu-2m[._-]v?(\d+(?:\.\d+)*)\.zip"/i)
          .map { |match| match[0].insert(4, ".") }
    end
  end

  font "migu-2m-#{version.no_dots}/migu-2m-bold.ttf"
  font "migu-2m-#{version.no_dots}/migu-2m-regular.ttf"

  # No zap stanza required
end
