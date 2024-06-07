cask "font-migmix-1m" do
  version "2020.0307"
  sha256 "5b662021765d5a091cdbe6b09dd464710fbc42fb20c544d28795b3e0580a216e"

  url "https://github.com/itouhiro/mixfont-mplus-ipa/releases/download/v#{version}/migmix-1m-#{version.no_dots}.zip",
      verified: "github.com/itouhiro/mixfont-mplus-ipa/"
  name "MigMix 1M"
  homepage "https://itouhiro.github.io/mixfont-mplus-ipa/migmix/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(/href=.*migmix-1m[._-]v?(\d+(?:\.\d+)*)\.zip"/i)
          .map { |match| match[0].insert(4, ".") }
    end
  end

  font "migmix-1m-#{version.no_dots}/migmix-1m-bold.ttf"
  font "migmix-1m-#{version.no_dots}/migmix-1m-regular.ttf"

  # No zap stanza required
end
