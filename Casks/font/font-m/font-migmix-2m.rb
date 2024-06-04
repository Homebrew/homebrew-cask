cask "font-migmix-2m" do
  version "2023.1123"
  sha256 "187486f875a980eb5c68751e2df86d7ed3c376c8ffd6fe3c5d2e5d79257b207b"

  url "https://github.com/itouhiro/mixfont-mplus-ipa/releases/download/v#{version}/migmix-2m-#{version.no_dots}.zip",
      verified: "github.com/itouhiro/mixfont-mplus-ipa/"
  name "MigMix 2M"
  homepage "https://itouhiro.github.io/mixfont-mplus-ipa/migmix/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{href=.*?/migmix-2m-(\d*)\.zip}i)
          .map { |match| match[0].insert(4, ".") }
    end
  end

  font "migmix-2m-#{version.no_dots}/migmix-2m-bold.ttf"
  font "migmix-2m-#{version.no_dots}/migmix-2m-regular.ttf"

  # No zap stanza required
end
