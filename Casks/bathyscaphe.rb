cask "bathyscaphe" do
  version "3.1.0,1089"
  sha256 "32f7758d2898fd8cccd1b506c8d78bbff6733640e392eba67c95a6626377a603"

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version.csv.first.no_dots}-v#{version.csv.second}.dmg",
      verified: "bitbucket.org/bathyscaphe/public/downloads/"
  name "BathyScaphe"
  desc "2-channel browser"
  homepage "https://bathyscaphe.bitbucket.io/"

  livecheck do
    url "https://bathyscaphe.bitbucket.io/appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/BathyScaphe-(\d+)-v(\d+)\.dmg}i)
      major_minor = item.short_version
      "#{major_minor}.#{match[1].delete_prefix(major_minor.delete("."))},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "BathyScaphe.app"
end
